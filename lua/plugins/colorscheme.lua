-- Uncomment this if you want rose-pine / don't forget to set the alpha to 0.9 in st terminal
-- local M = {
--     "rose-pine/neovim",
--     name = "rose-pine"
-- }
-- M.config = function()
-- 	require("rose-pine").setup({
--         styles = {
--             transparency = true,
--         }
-- 	})
-- 	vim.cmd.colorscheme "rose-pine"
-- end
-- return M


-- local M = {
--     "rebelot/kanagawa.nvim"
-- }
--
-- M.config = function()
--     require("kanagawa").setup({})
--     vim.cmd.colorscheme("kanagawa")
-- end

local M = { "ellisonleao/gruvbox.nvim",
    priority = 1000 ,
    config = true,
    opts = ...
}

M.config = function()
    require("gruvbox").setup({
        vim.cmd.colorscheme("gruvbox")
    })
end
return M
