return {
	{ "williamboman/mason.nvim" },
	{ "williamboman/mason-lspconfig.nvim" },

	{
		"VonHeikemen/lsp-zero.nvim",
		branch = "v3.x",

		config = function()
			local lsp = require("lsp-zero")

			require("mason").setup({})

			require("mason-lspconfig").setup({
				-- Replace the language servers listed here
				-- with the ones you want to install
				ensure_installed = { "tsserver", "rust_analyzer" },
				handlers = {
					lsp.default_setup,
				},
			})

			lsp.preset("recommended")

			-- local pid = vim.fn.getpid()
			-- local omnisharp_bin = "/Users/ericsakmar/Applications/omnisharp-osx/run"
			-- require("lspconfig").omnisharp.setup({
			-- 	cmd = { omnisharp_bin, "--languageserver", "--hostPID", tostring(pid) },
			-- })

			lsp.on_attach(function(client, bufnr)
				local opts = { buffer = bufnr, remap = false }

				-- i use these often
				vim.keymap.set("n", "gd", function()
					vim.lsp.buf.definition()
				end, opts)

				vim.keymap.set("n", "K", function()
					vim.lsp.buf.hover()
				end, opts)

				vim.keymap.set("n", "<leader>e", function()
					vim.diagnostic.open_float()
				end, opts)

				vim.keymap.set("n", "<leader>ca", function()
					vim.lsp.buf.code_action()
				end, opts)

				vim.keymap.set("i", "<C-h>", function()
					vim.lsp.buf.signature_help()
				end, opts)

				-- i don't use these much
				vim.keymap.set("n", "<leader>vws", function()
					vim.lsp.buf.workspace_symbol()
				end, opts)

				vim.keymap.set("n", "[d", function()
					vim.diagnostic.goto_next()
				end, opts)

				vim.keymap.set("n", "]d", function()
					vim.diagnostic.goto_prev()
				end, opts)

				vim.keymap.set("n", "<leader>vrr", function()
					vim.lsp.buf.references()
				end, opts)

				vim.keymap.set("n", "<leader>vrn", function()
					vim.lsp.buf.rename()
				end, opts)
			end)

			lsp.setup()
			print("DONEEE!!!")
		end,
	},
	{ "neovim/nvim-lspconfig" },
	{ "hrsh7th/cmp-nvim-lsp" },
	{ "hrsh7th/nvim-cmp" },
	{ "L3MON4D3/LuaSnip" },
}
