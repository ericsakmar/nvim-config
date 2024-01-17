return {
	"saadparwaiz1/cmp_luasnip",
	config = function()
		local ls = require("luasnip")
		local types = require("luasnip.util.types")
		local s = ls.snippet
		local sn = ls.snippet_node
		local isn = ls.indent_snippet_node
		local t = ls.text_node
		local i = ls.insert_node
		local f = ls.function_node
		local c = ls.choice_node
		local d = ls.dynamic_node
		local r = ls.restore_node

		ls.add_snippets(nil, {
			all = {
				s("log", {
					t({ "console.log(" }),
					i(1),
					t({ ");" }),
					i(0),
				}),

				s("mui", {
					t({ "import " }),
					i(1),
					t({ " from '@mui/material/" }),
					f(function(args)
						return args[1][1]
					end, { 1 }),
					t({ "';" }),
					i(0),
				}),
			},
		})

		vim.keymap.set("i", "<C-d>", function()
			if ls.expand_or_jumpable() then
				ls.expand_or_jump()
			end
		end)
	end,
}
