local M = {
	"rose-pine/neovim",
	name = "rose-pine",
}

M.config = function()
    require("rose-pine").setup({
        styles = {
            transparency = false
        }
    })
    vim.cmd.colorscheme("rose-pine")
end

return M
