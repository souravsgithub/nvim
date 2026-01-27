-- setting up the leader key to Space
vim.g.mapleader = " "
vim.g.localmapleader = " "

-- greatest remap ever

vim.keymap.set("x", "<leader>p", "\"_dP")

-- next greatest remaps ever

vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")
