return {
	"stevearc/conform.nvim",
	config = function()
		local conform = require("conform")
		local opts = { noremap = true, silent = true }
		vim.keymap.set("n", "<leader>lf", ":ConformInfo<CR>", opts)
		vim.keymap.set("n", "<leader>fa", conform.format, opts)
		vim.keymap.set({ "v", "x" }, "<leader>cf", conform.format, opts)
		conform.setup({
			formatters_by_ft = {
				lua = { "stylua" },
				-- Conform will run multiple formatters sequentially
				-- python = { "isort", "black" },
				-- You can customize some of the format options for the filetype (:help conform.format)
				-- rust = { "rustfmt", lsp_format = "fallback" },
				-- Conform will run the first available formatter
				-- javascript = { "prettierd", "prettier", stop_after_first = true },
			},
			format_on_save = {
				-- These options will be passed to conform.format()
				timeout_ms = 500,
				lsp_format = "fallback",
			},
		})
	end,
}
