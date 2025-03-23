-- Load lazy.nvim
vim.opt.rtp:prepend("~/.local/share/nvim/lazy/lazy.nvim")

-- Load plugins
require("plugins")

-- Load keymaps
require("keymaps")


-- General settings
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.number = true
vim.opt.relativenumber = true

-- Run LÖVE with F5
vim.keymap.set("n", "<F5>", ":!open -n -a love '/Users/rubens/Documents/Tetris/'<CR>")
