return {
	"stevearc/conform.nvim",

	config = function()
		require("conform").setup({
			formatters_by_ft = {
				lua = { "stylua" },
				javascript = { "prettier" },
				javascriptreact = { "prettier" },
				typescript = { "prettier" },
				typescriptreact = { "prettier" },
				html = { "prettier" },
				css = { "prettier" },
				markdown = { "prettier" },
			},
			format_on_save = {
				timeout_ms = 2000,
				lsp_format = "fallback",
			},
		})
	end,
}
