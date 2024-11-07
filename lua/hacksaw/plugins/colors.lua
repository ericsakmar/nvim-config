return {
	{ "olimorris/onedarkpro.nvim" },
	{
		"ellisonleao/gruvbox.nvim",

		config = function()
			vim.o.background = "dark"
			vim.cmd("colorscheme gruvbox")
		end,
	},
}
