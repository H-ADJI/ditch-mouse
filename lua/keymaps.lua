-- highling / search keymap
local opts = { noremap = true, silent = true }
vim.keymap.set("n", "<leader>/", ":nohlsearch<CR>",opts)
vim.keymap.set("n", "<leader>e", ":Neotree focus filesystem float toggle<CR>", opts)
vim.keymap.set("n", "<leader>ll", ":Lazy<CR>", opts)
