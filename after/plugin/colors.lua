function DoColors(color)
  color = color or "one"
  vim.cmd.colorscheme(color)
  vim.g.one_allow_italics = true
end

DoColors()

