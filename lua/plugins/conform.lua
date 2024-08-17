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
				python = { "ruff_format", "black", stop_after_first = true },
				go = { "gofmt", stop_after_first = true },
				-- You can customize some of the format options for the filetype (:help conform.format)
				-- rust = { "rustfmt", lsp_format = "fallback" },
				-- Conform will run the first available formatter
				json = { "prettierd", "prettier", stop_after_first = true },
			},
			-- debug logs
			-- log_level = vim.log.levels.DEBUG,
			format_on_save = {
				-- These options will be passed to conform.format()
				timeout_ms = 5000,
				lsp_format = "fallback",
			},
		})
	end,
}
