vim.api.nvim_create_autocmd("LspAttach", {
    callback = function()
        local keymap = vim.keymap.set
        keymap("n", "gD", vim.lsp.buf.declaration, { desc = "Go to declaration" })
        keymap("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
        keymap("n", "K", vim.lsp.buf.hover, { desc = "View Documentation" })
        keymap("n", "gi", vim.lsp.buf.implementation, { desc = "Show implementation" })
        keymap("n", "gr", vim.lsp.buf.references, { desc = "List references in Quickfix" })
        local wk = require("which-key")
        wk.add({
            mode = {"n"},
            {"<leader>rn", vim.lsp.buf.rename, { desc = "Rename all references" }},
            {"<leader>fo", vim.lsp.buf.format, { desc = "Formar" }},
            {"<leader>ca", vim.lsp.buf.code_action, { desc = "Code Action" }}
        })
    end
})
