do
    local gh = require("init-plugins").gh
    vim.pack.add { gh 'folke/todo-comments.nvim' }
    require('todo-comments').setup {
        signs = false
    }
end
