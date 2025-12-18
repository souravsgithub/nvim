local langs = { "c", "cpp", "vim", "vimdoc", "query", "lua", "markdown", "markdown_inline", "java" }
local ts_group = vim.api.nvim_create_augroup("UserTreesitterConfig", { clear = true })

vim.api.nvim_create_autocmd("FileType", {
    pattern = langs,
    group = ts_group,
    callback = function()
        vim.treesitter.start()
        vim.wo.foldexpr = "v:lua.vim.treesitter.foldexpr()"
        vim.wo.foldmethod = "expr"
        vim.wo.foldlevel = 99
        vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
    end
})

local user_lsp_group = vim.api.nvim_create_augroup("UserLspGroup", { clear = true })
vim.api.nvim_create_autocmd("LspAttach", {
    group = user_lsp_group,
    callback = function()
        local wk = require("which-key")
        wk.add({
            { "gd", function() vim.lsp.buf.definition() end, desc = "go to definition" },
            { "K", function() vim.lsp.buf.hover() end, desc = "hover over docs" },
            { "<leader>ws", function() vim.lsp.buf.workspace_symbol() end, desc = "workspace symbol" },
            { "<leader>vd", function() vim.diagnostic.open_float() end, desc = "open float" },
            { "[d", function() vim.diagnostic.goto_next() end, desc = "goto next" },
            { "]d", function() vim.diagnostic.goto_prev() end, desc = "goto prev" },
            { "<leader>vca", function() vim.lsp.buf.code_action() end, desc = "code action" },
            { "<leader>vrr", function() vim.lsp.buf.references() end, desc = "references" },
            { "<leader>vrn", function() vim.lsp.buf.rename() end, desc = "rename" },
            { "<C-h>", function() vim.lsp.buf.signature_help() end, desc = "signature help", mode = "i" },
        })
    end,
})
