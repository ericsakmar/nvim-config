return {
	"nvim-lua/plenary.nvim",

	"tpope/vim-fugitive",
	"tpope/vim-repeat",
	"tpope/vim-surround",

	{
		"nvim-tree/nvim-tree.lua",
		version = "*",
		lazy = false,
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
		config = function()
			require("nvim-tree").setup({
				view = {
					width = 50,
				},
			})
		end,
	},

	"christoomey/vim-sort-motion", -- TODO replace this with something new?

	{
		"numToStr/Comment.nvim",
		opts = {
			-- add any options here
		},
		lazy = false,
	},

	"wcascades/vim-fugitive-toggle",

	-- TODO consider
	-- Plug 'folke/trouble.nvim'
}
