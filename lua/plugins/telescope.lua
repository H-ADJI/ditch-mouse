return {
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      { "<leader>gS", "<cmd>Telescope git_branches<cr>", desc = "git switch branch" },
      { "<leader>mc", "<cmd>Telescope colorscheme<cr>", desc = "change colorscheme" },
      {
        "<leader>fp",
        function()
          require("telescope.builtin").find_files({ cwd = require("lazy.core.config").options.root })
        end,
        desc = "Find Plugin File",
      },
    },
    opts = {
      pickers = {
        colorscheme = {
          enable_preview = true,
        },
      },
      defaults = {
        layout_strategy = "horizontal",
        layout_config = { prompt_position = "top" },
        sorting_strategy = "ascending",
        winblend = 0,
      },
    },
  },
}
