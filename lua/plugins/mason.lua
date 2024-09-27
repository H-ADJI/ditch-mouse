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
      "gospel",
      "iferr",
      "goimports",
      "golines",
      "templ",
      -- javascript
      "typescript-language-server",
      "eslint-lsp",
      -- other stuff
      "clangd",
      "htmx-lsp",
      "sqlfluff",
      -- "sqlfmt",
      "dockerfile-language-server",
      "prettierd",
      "shellcheck",
      "shfmt",
      "stylua",
    },
  },
}
