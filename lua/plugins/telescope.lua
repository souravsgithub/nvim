return {
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.6',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      -- local builtin = require('telescope.builtin')
      --vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = "files" })
      -- vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = "grep" })
      -- vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = "buffers" })
      -- vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = "tags" })
      local wk = require("which-key")
      local mappings = {
          ["<leader>fb"] = { "<cmd>Telescope buffers<CR>", "List buffers"},
          ["<leader>fa"] = { "<cmd>:lua require('telescope.builtin').find_files({ hidden = true })<CR>", "Find files(all)"},
          ["<leader>ff"] = { "<cmd>Telescope find_files<CR>", "Find files"},
          ["<leader>fg"] = { "<cmd>Telescope live_grep<CR>", "Live grep"},
          ["<leader>fr"] = {"<cmd>Telescope oldfiles<CR>", "Recent files"},
          ["<leader>fh"] = {"<cmd>Telescope help_tags<CR>", "Help tags"},
          ["<leader>fn"] = { "<cmd>enew<CR>", "New File"}
      }
      wk.register(mappings)
      
    end
  },
  {
    'nvim-telescope/telescope-ui-select.nvim',
    config = function()
      require("telescope").setup {
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown {
            }
          }
        }
      }
      require("telescope").load_extension("ui-select")
    end
  }
}

