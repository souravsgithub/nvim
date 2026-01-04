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
    -- downloaded from pacman
    vim.lsp.config("tailwindcss", {
        root_dir = function(fname)
            if type(fname) == "number" then
                fname = vim.api.nvim_buf_get_name(fname)
            end
            if fname == "" then return nil end

            -- find tailwind project marker
            local root_file = vim.fs.find(
                { "tailwind.config.js", "package.json", ".git" },
                { upward = true, path = fname }
            )[1]

            -- get the folder containing the marker, or fallback to file's folder
            return root_file and vim.fs.dirname(root_file) or vim.fs.dirname(fname)
        end,
        cmd = { "tailwindcss-language-server" , "--stdio" },
        filetypes = { "css" ,"html", "scss", "sass", "javascript", "typescript", "javascriptreact", "typescriptreact" },
    })
    vim.lsp.enable("tailwindcss")
end

return M
