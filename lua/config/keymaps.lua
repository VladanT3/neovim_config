-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", ";", ":")
vim.keymap.set("x", "<leader>p", '"_dP') -- Keep old text when pasting over highlighted one

local del = vim.keymap.del

-- remove buffer keymaps
del("n", "<S-h>", { desc = "Prev Buffer" })
del("n", "<S-l>", { desc = "Next Buffer" })
del("n", "[b", { desc = "Prev Buffer" })
del("n", "]b", { desc = "Next Buffer" })
del("n", "<leader>bb", { desc = "Switch to Other Buffer" })
del("n", "<leader>`", { desc = "Switch to Other Buffer" })
del("n", "<leader>bd", { desc = "Delete Buffer" })
del("n", "<leader>bo", { desc = "Delete Other Buffers" })
del("n", "<leader>bD", { desc = "Delete Buffer and Window" })
