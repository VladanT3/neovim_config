do
    local gh = require("init-plugins").gh
    vim.pack.add { gh 'nvim-mini/mini.nvim' }
    require("mini.pairs").setup()
    require("mini.cursorword").setup({
        delay = 500,
    })
    require("mini.icons").setup()
    require("mini.starter").setup({
        items = {
            { name = "Update plugins", action = "lua vim.pack.update()", section = "test" },
            { name = "Show plugins", action = "lua vim.pack.update(nil, { offline = true })", section = "test" },
            { name = "Mason", action = "Mason", section = "test" }
        }
    })
    require("mini.files").setup({
        mappings = {
            go_in = "<Right>",
            go_out = "<Left>",
        },
    })
    local statusline = require("mini.statusline")
    statusline.setup({ use_icons = vim.g.have_nerd_font })
    statusline.section_location = function()
        return "%2l:%-2L | %2v:%-2V"
    end
end
