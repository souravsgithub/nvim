-- set cursor to block
vim.opt.guicursor = ""
-- sets numbered lines
vim.opt.number = true
-- shows line numbers relative to the line where the cursor is at
vim.opt.relativenumber = true

-- opens splits in the right
vim.opt.splitright = true
-- opens splits below the current window
vim.opt.splitbelow = true

-- wraps the long lines into new lines
vim.opt.wrap = false

-- expands the tab into spaces
vim.opt.expandtab = true
-- sets the numebr of spaces a tab will use in appearance ( existing tabs )
vim.opt.tabstop = 4
-- sets the number of spaces a tab uses when editing the file
vim.opt.softtabstop = 4
-- numher of spaces used when indenting or detenting ( when the width is shifted basically )
vim.opt.shiftwidth = 4

-- synchronizes systme's clipboard with neovim's plus clipboard
vim.opt.clipboard = "unnamedplus"

-- number of lines to show before or after the cursor when scrolling ( 999 = mid )
vim.opt.scrolloff = 999

-- devides the whole document into individual cells to edit ( in visual block mode )
vim.opt.virtualedit = "block"

-- creates a split window that show the live changes being made
vim.opt.inccommand = "split"

-- ignore the casing of the letters
vim.opt.ignorecase = true

-- support true colors ( 24 bit )
vim.opt.termguicolors = true

-- cursor line enable/disable
vim.opt.cursorline = false

-- remove highlight from search
vim.opt.hlsearch = false

-- show diagnostic messages
vim.diagnostic.config({
    virtual_text = true
})
