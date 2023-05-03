vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- saving
vim.keymap.set("n", "<C-s>", "<esc>:w<CR>")
vim.keymap.set("i", "<C-s>", "<esc>:w<CR>")

-- tabs
vim.keymap.set("n", "<TAB>", ":bn<CR>");
vim.keymap.set("n", "<S-TAB>", ":bp<CR>");

-- tree
vim.keymap.set("n", "<leader>t", "<cmd>NvimTreeToggle<cr>");

-- splits
vim.keymap.set("n", "<C-J>", "<C-W><C-J>");
vim.keymap.set("n", "<C-K>", "<C-W><C-K>");
vim.keymap.set("n", "<C-L>", "<C-W><C-L>");
vim.keymap.set("n", "<C-H>", "<C-W><C-H>");

-- other helpful things
vim.keymap.set("n", "<leader>h", ":nohlsearch<cr>");
vim.keymap.set("n", "<leader>light", "<esc>:set background=light<cr>");
vim.keymap.set("n", "<leader>dark", "<esc>:set background=dark<cr>");


