-- indentation and tabs
vim.o.expandtab = true
vim.o.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftwidth = 2
vim.g.mapleader = " "
-- lazy package manager download
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)
-- Setup lazy.nvim

tree_sitter_config = function()
  local configs = require("nvim-treesitter.configs")
  configs.setup({
    ensure_installed = {"c", "lua", "python", "go", "json", "html"},
    sync_install = false,
    highlight = { enable = true },
    indent = { enable = true },
  })
end
local plugins = {
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 }, 
  { 'nvim-telescope/telescope.nvim', 
    tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },
  {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate", config = tree_sitter_config},
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
      -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    }
}
}
local opts = {}
require("lazy").setup(plugins,opts)
-- activating color scheme
vim.cmd.colorscheme("catppuccin")
-- require("catppuccin").setup({flavor = "mocha"})
local builtin = require('telescope.builtin')
-- telescope keymaps
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
-- / highlighting keymap
vim.keymap.set('n', '<leader>/', ':nohlsearch<CR>', { noremap = true, silent = true })
