-- setting up the leader key to Space
vim.g.mapleader = " "
vim.g.localmapleader = " "

-- greatest remap ever

vim.keymap.set("x", "<leader>p", "\"_dP")

-- next greatest remaps ever

vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- for deleting permanently
vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

-- other keymaps
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
