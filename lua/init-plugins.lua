do
    -- Function to run build commands for some plugins
    local function run_build(name, cmd, cwd)
        local result = vim.system(cmd, { cwd = cwd }):wait()
        if result.code ~= 0 then
            local stderr = result.stderr or ''
            local stdout = result.stdout or ''
            local output = stderr ~= '' and stderr or stdout
            if output == '' then output = 'No output from build command.' end
            vim.notify(('Build failed for %s:\n%s'):format(name, output), vim.log.levels.ERROR)
        end
    end

    -- Autocommand to run build commands for certain plugins
    -- It runs after a plugin is installed or updated
    vim.api.nvim_create_autocmd('PackChanged', {
        callback = function(ev)
            local name = ev.data.spec.name
            local kind = ev.data.kind
            if kind ~= 'install' and kind ~= 'update' then return end

            if name == 'telescope-fzf-native.nvim' and vim.fn.executable 'make' == 1 then
                run_build(name, { 'make' }, ev.data.path)
                return
            end

            if name == 'LuaSnip' then
                if vim.fn.has 'win32' ~= 1 and vim.fn.executable 'make' == 1 then
                    run_build(name,
                        { 'make', 'install_jsregexp' }, ev.data.path)
                end
                return
            end

            if name == 'nvim-treesitter' then
                if not ev.data.active then vim.cmd.packadd 'nvim-treesitter' end
                vim.cmd 'TSUpdate'
                return
            end
        end,
    })

    -- Because most plugins are hosted on GitHub, this helper function can help to have less repetition.
    local function gh(repo) return 'https://github.com/' .. repo end

    -- Iterate over all Lua files in the plugins directory and load them
    local plugins_dir = vim.fs.joinpath(vim.fn.stdpath 'config', 'lua', 'custom', 'plugins')
    for file_name, type in vim.fs.dir(plugins_dir) do
        if type == 'file' and file_name:match '%.lua$' and file_name ~= 'init.lua' then
            local module = file_name:gsub('%.lua$', '')
            require('custom.plugins.' .. module)
        end
    end
end
