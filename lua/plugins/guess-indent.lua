do
    local gh = require("plugins.utils").gh
    vim.pack.add { gh 'NMAC427/guess-indent.nvim' }
    require('guess-indent').setup {}
end
