do
    -- LSP status progress
    local gh = require("init-plugins").gh
    vim.pack.add { gh 'j-hui/fidget.nvim' }
    require('fidget').setup {}
end
