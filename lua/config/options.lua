-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- osc52 extra configs
vim.g.clipboard_osc52_silent = false -- Set to `true` to suppress messages
vim.g.clipboard_osc52_timeout = 1000 -- Timeout in milliseconds (abort if no response)

-- Enable OSC 52 clipboard support
vim.g.clipboard = {
  name = "osc52",
  copy = {
    ["+"] = require("vim.ui.clipboard.osc52").copy("+"),
    ["*"] = require("vim.ui.clipboard.osc52").copy("*"),
  },
  paste = {
    ["+"] = require("vim.ui.clipboard.osc52").paste("+"),
    ["*"] = require("vim.ui.clipboard.osc52").paste("*"),
  },
}

local opt = vim.opt

opt.relativenumber = true
opt.ignorecase = false
opt.list = false
opt.tabstop = 4
opt.shiftwidth = 4
opt.softtabstop = 4
opt.scrolloff = 10
