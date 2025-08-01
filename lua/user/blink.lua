local M = {
    "saghen/blink.cmp",
    dependencies = {
        "rafamadriz/friendly-snippets"
    },
    version = "1.*",
}

M.config = function()
    require("blink.cmp").setup({
        keymap = { preset = "default" },

        appearance = {
            nerd_font_variant = "mono"
        },

        -- (Default) Only show the documentation popup when manually triggered
        completion = { documentation = { auto_show = true } },

        sources = {
            default = { "lazydev", "lsp", "path", "snippets", "buffer" },
            providers = {
                lazydev = {
                    name = "LazyDev",
                    module = "lazydev.integrations.blink",
                    score_offset = 100,
                },
            },
        },

        fuzzy = { implementation = "rust" }
    })
end

return M
