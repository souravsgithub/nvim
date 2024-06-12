return {
	{
		"hrsh7th/cmp-nvim-lsp", -- this is to get snippets from the lsp attached to the current buffer and it's config is in the lsp.lua file
	},
	{
		"hrsh7th/cmp-path",
	},
	{
		"L3MON4D3/LuaSnip", -- luasnip is the engine that is used to expand the snippets
		version = "v2.*",
		dependencies = {
			"saadparwaiz1/cmp_luasnip", -- this helps luasnip ( it's very confusing )
			"rafamadriz/friendly-snippets", -- this plugin gives us vs code like snippets for all major languages using the help of luasnip of course.
		},
	},
	{
		"hrsh7th/nvim-cmp", -- this is the engine that is used for autocompletion in neovim
		config = function()
			-- Setup nvim-cmp
			local cmp = require("cmp")
			require("luasnip.loaders.from_vscode").lazy_load()

			cmp.setup({
				snippet = {
					-- REQUIRED - you must specify a snippet engine
					expand = function(args)
						require("luasnip").lsp_expand(args.body) -- For `luasnip` users.
						-- vim.snippet.expand(args.body) -- For native neovim snippets (Neovim v0.10+)
					end,
				},
				window = {
					completion = cmp.config.window.bordered(),
					documentation = cmp.config.window.bordered(),
				},
				mapping = cmp.mapping.preset.insert({
					["<C-b>"] = cmp.mapping.scroll_docs(-4),
					["<C-f>"] = cmp.mapping.scroll_docs(4),
					["<C-Space>"] = cmp.mapping.complete(),
					["<C-e>"] = cmp.mapping.abort(),
					["<CR>"] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
				}),
				sources = cmp.config.sources({
					-- { name = "nvim_lsp" },
					{ name = "luasnip" }, -- For luasnip users.
				}, {
					{ name = "buffer" },
				}, {
					{ name = "path" },
				}),
			})
		end,
	},
}
