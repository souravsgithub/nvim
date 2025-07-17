local M = {
    "stevearc/oil.nvim",
    ---@module 'oil'
    ---@type oil.SetupOpts
    dependencies = { { "echasnovski/mini.icons", opts = {} } },
    lazy = false,
}
M.config = function()
    local oil = require("oil") 
    oil.setup({})
    local wk = require("which-key")
    wk.add({
        mode = {"n"},
        {"-", "<cmd>Oil<CR>", desc = "Open parent directory" }
    })
end

return M
