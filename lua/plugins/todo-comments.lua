do
    local gh = require("plugins.utils").gh
    vim.pack.add { gh 'folke/todo-comments.nvim' }
    require('todo-comments').setup {
        signs = false
    }
end
