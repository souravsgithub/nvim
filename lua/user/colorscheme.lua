local M = {
    "rebelot/kanagawa.nvim",
    lazy = false,
    priority = 1000,
}

M.config = function()
    require("kanagawa").setup({
        transparent = false
    })
    vim.cmd.colorscheme("kanagawa-wave")
end

return M
