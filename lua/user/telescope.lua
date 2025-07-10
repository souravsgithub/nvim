local M = {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    dependencies = { "nvim-lua/plenary.nvim" }
}

M.config = function()
    local builtin = require("telescope.builtin")
    local wk = require("which-key")
    wk.add({
        mode = {"n"},
        {"<leader>ff", builtin.find_files, desc = "Telescope find files" },
        {"<leader>fg", builtin.live_grep, desc = "Telescope live grep" },
        {"<leader>fb", builtin.buffers, desc = "Telescope buffers" },
        {"<leader>fh", builtin.help_tags, desc = "Telescope help tags" },
    })
end

return M
