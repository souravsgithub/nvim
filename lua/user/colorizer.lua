local M = {
    "catgoose/nvim-colorizer.lua",
    event = "BufReadPre",
}

M.config = function()
    require("colorizer").setup({})
end

return M
