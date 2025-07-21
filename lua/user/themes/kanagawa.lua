local M = {
    "rebelot/kanagawa.nvim",
    lazy = false,
    priority = 1000,
}

M.config = function()
    require("kanagawa").setup({
        -- transparent = true
    })
vim.cmd.colorscheme("kanagawa-wave")
-- vim.cmd 'highlight TelescopeBorder guibg=none'
-- vim.cmd 'highlight TelescopeTitle guibg=none'
end

return M
