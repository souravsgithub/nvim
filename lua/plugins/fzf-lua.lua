local M = {
    "ibhagwan/fzf-lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    event = "VimEnter",
}

M.config = function()
    local wk = require("which-key")
    local fzf = require("fzf-lua")
    
    fzf.setup({
        wk.add({
            { "<leader>pv", vim.cmd.Ex, desc = "netrw" },
            { "<leader>ps", function() fzf.grep() end, desc = "project grep" },
            { "<C-p>", function() fzf.git_files() end, desc = "project git files" },
            { "<leader>pf", function() fzf.files() end, desc = "project all files" },
            { "<leader>b", function() fzf.buffers() end, desc = "open buffer list" },
        }),

        fzf_opts = {
            ["--cycle"] = "",
        },
    })
end

return M
