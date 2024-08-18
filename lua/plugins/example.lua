return {
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      {
        "<leader>fp",
        function()
          require("telescope.builtin").find_files({ cwd = require("lazy.core.config").options.root })
        end,
        desc = "Find Plugin File",
      },
    },
    opts = {
      defaults = {
        layout_strategy = "horizontal",
        layout_config = { prompt_position = "top" },
        sorting_strategy = "ascending",
        winblend = 0,
      },
    },
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "stylua",
        "shellcheck",
        "shfmt",
        "flake8",
      },
    },
  },
  {
    "stevearc/conform.nvim",
    keys = {
      { "<leader>lf", ":ConformInfo<CR>", desc = "conform formatters information" },
      { "<leader>cf", require("conform").format, mode = { "n", "x", "o", "v" }, desc = "format buffer " },
    },
    {
      "folke/zen-mode.nvim",
      config = function()
        vim.api.nvim_set_keymap("n", "<leader>z", ":ZenMode<CR>", { noremap = true, silent = true })
        require("zen-mode").setup({
          window = {
            backdrop = 0.95, -- shade the backdrop of the Zen window. Set to 1 to keep the same as Normal
            width = 180, -- width of the Zen window
            height = 0.98, -- height of the Zen window
          },
        })
      end,
    },
  },
  {
  "nvim-neo-tree/neo-tree.nvim",
    keys = {
      { "<leader>e", ":Neotree focus filesystem float toggle<CR>", desc = "Neotree file explorer" },
    },
  }
}
