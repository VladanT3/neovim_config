do
    local gh = require("plugins.utils").gh
    vim.pack.add { gh "mbbill/undotree" }
    vim.keymap.set("n", "<leader>ut", vim.cmd.UndotreeToggle, { desc = "Toggle [U]ndo [T]ree" })
end
