-- indentation and tabs
vim.o.expandtab = true
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4 
-- Don't show the mode, since it's already in the status line
vim.opt.showmode = false
vim.g.mapleader = " "
vim.opt.clipboard:append("unnamedplus")

-- Make line numbers default
vim.opt.number = true
-- You can also add relative line numbers, to help with jumping.
--  Experiment for yourself to see if you like it!
vim.opt.relativenumber = true
