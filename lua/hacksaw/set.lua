vim.opt.relativenumber = true
vim.opt.number = true

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.colorcolumn = "80"
vim.opt.signcolumn = "yes"

vim.opt.encoding = "utf8"

vim.opt.splitbelow = true
vim.opt.splitright = true

-- TODO figure out what these are for
-- vim.opt.hidden = true
-- vim.opt.listchars = tab:->,trail:-
vim.opt.list  =  true

-- oet wildignore+=*/node_modules/**,*/dist/*,*/release/*

