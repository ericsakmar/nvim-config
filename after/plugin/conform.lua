require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },
		javascript = { { "prettierd", "prettier" } },
		typescript = { { "prettierd", "prettier" } },
		typescriptreact = { { "prettierd", "prettier" } },
		html = { { "prettierd", "prettier" } },
		css = { { "prettierd", "prettier" } },
	},
})

vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*",
	callback = function(args)
		require("conform").format({ bufnr = args.buf, lsp_fallback = true })
	end,
})
