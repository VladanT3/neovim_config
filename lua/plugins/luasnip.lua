do
    local gh = require("plugins.utils").gh
    vim.pack.add { { src = gh "L3MON4D3/LuaSnip", version = vim.version.range "2.*" } }
    require("luasnip").setup {}
end
