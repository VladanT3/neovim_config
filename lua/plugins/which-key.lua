do
    local gh = require("init-plugins").gh
    vim.pack.add { gh 'folke/which-key.nvim' }
    require('which-key').setup {
        delay = 300,
        icons = { mappings = vim.g.have_nerd_font },
        spec = {
            { "<leader>s", group = "[S]earch" },
            { "<leader>c", group = "[C]ode" },
            { "<leader>h", group = "[H]arpoon" },
        },
    }
end
