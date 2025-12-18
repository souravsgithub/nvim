local M = {
    "neovim/nvim-lspconfig",
}

M.config = function()
    -- downloaded using pacman 
    vim.lsp.enable("clangd")
    -- downloaded using yay
    vim.lsp.config("vtsls", {
        cmd = { "vtsls", "--stdio" },
    })
    vim.lsp.enable("vtsls")
    -- downloaded using pacman
    vim.lsp.config("lua_ls", {
        cmd = { "lua-language-server" }
    })
    vim.lsp.enable("lua_ls")
    -- downloaded from yay
    vim.lsp.enable("jdtls")
end

return M
