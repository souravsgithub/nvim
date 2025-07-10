local M = {"neovim/nvim-lspconfig"}

M.config = function()
    vim.lsp.enable({ "clangd", "lua_ls", "ts_ls" })
end
return M
