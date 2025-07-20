vim.opt.number = true -- sets numbered lines
vim.opt.relativenumber = true -- sets relative numbered lines

vim.opt.splitbelow = true -- forces to open horizontal splits below
vim.opt.splitright = true -- forces to open vertical splits to the right

vim.opt.wrap = false --stops wrapping the content

vim.opt.expandtab = true -- expands the tab into spaces
vim.opt.tabstop = 4 -- makes tab 4 spaces (default: 8)
vim.opt.shiftwidth = 4 -- makes indent and dedent go 4 spaces

vim.opt.clipboard = "unnamedplus" -- syncronizes the system's clipboard with neovim's clipboard
vim.opt.scrolloff = 999 -- keeps the cursor in middle when scrolling (scroll offset)
vim.opt.cursorline = false -- enable the cursorline to highlight

vim.opt.virtualedit = "block" -- adds good functionality in visual block mode
vim.opt.inccommand = "split" -- live preview the changes made in a split below

vim.opt.ignorecase = true -- ignores the casing in search, etc..
vim.opt.termguicolors = true -- sets some color config from the terminals (I guess)

vim.opt.showmode = false -- shows the mode you are in
vim.opt.signcolumn = "yes"
vim.o.undofile = true -- save undo history

-- Set up diagnostics
vim.diagnostic.config({
    virtual_lines = true,
})
-- keymaps
vim.g.mapleader = " "
vim.env.BROWSER = "brave" -- open links in default browser
