local M = {
    "folke/which-key.nvim",
    event = "VeryLazy",
}

M.config = function()
    local wk = require("which-key")
    wk.add({
        {
            mode = { "n", "v" },
            { "<leader>q", "<cmd>q<CR>", desc = "Quit" },
            { "<leader>f", group = "file" },
        }
    })
end

return M
