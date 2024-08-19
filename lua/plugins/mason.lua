return {
  "williamboman/mason.nvim",
  keys = {
    { "<leader>mm", "<cmd>Mason<cr>", desc = "mason info" },
  },
  opts = {
    ensure_installed = {
      "stylua",
      "shellcheck",
      "shfmt",
      "ruff",
      "gopls",
    },
  },
}
