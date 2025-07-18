local M = {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    config = true
}

M.config = function()
    require("nvim-autopairs").setup({})
end

return M
