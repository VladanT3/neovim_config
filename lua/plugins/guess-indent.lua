do
    local gh = require("init-plugins").gh
    vim.pack.add { gh 'NMAC427/guess-indent.nvim' }
    require('guess-indent').setup {}
end
