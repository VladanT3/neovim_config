do
    -- LSP status progress
    local gh = require("plugins.utils").gh
    vim.pack.add { gh 'j-hui/fidget.nvim' }
    require('fidget').setup {}
end
