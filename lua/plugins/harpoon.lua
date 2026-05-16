do
    local gh = require("init-plugins").gh
    vim.pack.add { gh "ThePrimeagen/harpoon", version = "harpoon2" }

    local harpoon = require("harpoon")
    vim.keymap.set("n", "<leader>ha", function() harpoon:list():add() end, { desc = "Add file to Harpoon" })
    vim.keymap.set("n", "<leader>hm", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc = "Harpoon menu" })
    vim.keymap.set("n", "<leader>1", function() harpoon:list():select(1) end)
    vim.keymap.set("n", "<leader>2", function() harpoon:list():select(2) end)
    vim.keymap.set("n", "<leader>3", function() harpoon:list():select(3) end)
    vim.keymap.set("n", "<leader>4", function() harpoon:list():select(4) end)
end
