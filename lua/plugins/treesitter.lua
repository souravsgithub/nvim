local M = {
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    lazy = false,
    build = ":TSUpdate",
}

M.config = function()
    local ts = require("nvim-treesitter")
    ts.install( { "cpp", "c", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline", "java" }, { summary = false } )
end

return M
