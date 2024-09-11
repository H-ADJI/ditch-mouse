return {
  "williamboman/mason.nvim",
  opts = {
    ensure_installed = {
      -- python stuff
      "pyright",
      "ruff",
      "black",
      -- golang stuff
      "gopls",
      -- javascript
      "typescript-language-server",
      "eslint-lsp",
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
