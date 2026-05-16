do
    local gh = require("plugins.utils").gh
    local telescope_plugins = {
        gh 'nvim-lua/plenary.nvim',
        gh 'nvim-telescope/telescope.nvim',
        gh 'nvim-telescope/telescope-ui-select.nvim',
    }
    if vim.fn.executable 'make' == 1 then table.insert(telescope_plugins, gh 'nvim-telescope/telescope-fzf-native.nvim') end
    vim.pack.add(telescope_plugins)

    require("telescope").setup {
        extensions = {
            ['ui-select'] = { require('telescope.themes').get_dropdown() },
        },
    }

    -- Enable Telescope extensions if they are installed
    pcall(require("telescope").load_extension, "fzf")
    pcall(require("telescope").load_extension, "ui-select")

    local builtin = require("telescope.builtin")
    vim.keymap.set("n", "<leader>sh", builtin.help_tags, { desc = "[S]earch [H]elp" })
    vim.keymap.set("n", "<leader>sk", builtin.keymaps, { desc = "[S]earch [K]eymaps" })
    vim.keymap.set("n", "<leader>sf", builtin.find_files, { desc = "[S]earch [F]iles" })
    vim.keymap.set("n", "<leader>ss", builtin.builtin, { desc = "[S]earch [S]elect Telescope" })
    vim.keymap.set("n", "<leader>sw", builtin.grep_string, { desc = "[S]earch current [W]ord" })
    vim.keymap.set("n", "<leader>sg", builtin.live_grep, { desc = "[S]earch by [G]rep" })
    vim.keymap.set("n", "<leader>sd", builtin.diagnostics, { desc = "[S]earch [D]iagnostics" })
    vim.keymap.set("n", "<leader>/", function()
        builtin.current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
            winblend = 10,
            previewer = false,
        }))
    end, { desc = "[/] Fuzzily search in current buffer" })
    vim.keymap.set("n", "<leader>sc", function()
        builtin.find_files({ cwd = vim.fn.stdpath("config") })
    end, { desc = "[S]earch Neovim [c]onfig files" })

    vim.api.nvim_create_autocmd('LspAttach', {
        group = vim.api.nvim_create_augroup('telescope-lsp-attach', { clear = true }),
        callback = function(event)
            local buf = event.buf
            vim.keymap.set('n', '<leader>crf', builtin.lsp_references, { buffer = buf, desc = '[G]oto [R]eferences' })
            vim.keymap.set('n', '<leader>ci', builtin.lsp_implementations, { buffer = buf, desc = '[G]oto [I]mplementation' })
            vim.keymap.set('n', '<leader>cdf', builtin.lsp_definitions, { buffer = buf, desc = '[G]oto [D]efinition' })
            vim.keymap.set('n', '<leader>ct', builtin.lsp_type_definitions, { buffer = buf, desc = '[G]oto [T]ype Definition' })
        end,
    })
end
