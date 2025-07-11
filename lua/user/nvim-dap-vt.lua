local M = { "theHamsta/nvim-dap-virtual-text" }
M.config = function()
    require("nvim-dap-virtual-text").setup({
        virt_text_pos = "eol",
        highlight_changed_variables = false,
    })
end

return M
