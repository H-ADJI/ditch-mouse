return {
  "williamboman/mason.nvim",
  opts = {
    ensure_installed = {
      -- python stuff
      "ruff-lsp",
      "pyright",
      "ruff",
      "black",
      -- golang stuff
      "gopls",
      -- other stuff
      "clangd",
      "dockerfile-language-server",
      "prettierd",
      "shellcheck",
      "shfmt",
      "stylua",
    },
  },
}
