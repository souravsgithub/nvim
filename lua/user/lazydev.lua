local M = {
    "folke/lazydev.nvim",
    ft = "lua"
}

M.config = function()
    require("lazydev").setup({
        library = {
            { "nvim-dap-ui"},
            { path = "${3rd}/luv/library", words = { "vim%.uv" } },
        },
    })
end

return M
