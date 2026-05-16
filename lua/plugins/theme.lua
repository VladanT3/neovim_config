do
    local gh = require("init-plugins").gh
    vim.pack.add { gh "sainnhe/gruvbox-material" }
    vim.opt.background = "dark"                    -- dark or light
    vim.g.gruvbox_material_background = "soft"     -- soft, medium, hard
    vim.g.gruvbox_material_foreground = "material" -- material, mix, original
    vim.g.gruvbox_material_disable_italic_comment = "1"
    vim.cmd.colorscheme("gruvbox-material")
end
