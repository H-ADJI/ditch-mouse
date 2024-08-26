return {
  "stevearc/conform.nvim",
  keys = {
    { "<leader>lf", ":ConformInfo<CR>", desc = "conform formatters information" },
    -- { "<leader>cf", require("conform").format, mode = { "n", "x", "o", "v" }, desc = "format buffer " },
  },
  opts = {
    log_level = vim.log.levels.DEBUG,
    formatters_by_ft = { python = { "black" }, json = { "prettierd" } },
    formatters = {
      black = {
        prepend_args = { "-l", "120" },
      },
    },
  },
}
