vim.g.mapleader = " "

vim.keymap.set("n", "H", "^")
vim.keymap.set("n", "L", "$")

vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<cr>")
vim.keymap.set("n", "gl", vim.diagnostic.open_float)

-- Commands
vim.keymap.set("n", "<C-s>", vim.cmd.w)
vim.keymap.set("n", "<leader>|", vim.cmd.vs)
vim.keymap.set("n", "<leader>-", vim.cmd.sp)

-- Pane navigation
vim.keymap.set("n", "<C-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<C-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<C-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<C-l>", ":wincmd l<CR>")
