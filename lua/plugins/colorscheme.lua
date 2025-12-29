-- Uncomment this if you want rose-pine / don't forget to set the alpha to 0.9 in st terminal
local M = {
    "rose-pine/neovim",
    name = "rose-pine"
}
M.config = function()
	require("rose-pine").setup({
        styles = {
            transparency = true,
        }
	})
	vim.cmd.colorscheme "rose-pine"
end
return M

