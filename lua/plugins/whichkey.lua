return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
  end,
  opts = {},
  config = function()
    local wk = require("which-key")
    local opts = {
      prefix = "<leader>",
      mode = "n"
    }
    local mappings = {
      q = { "<cmd>confirm q<CR>", "Quit"},
      h = { "<cmd>nohlsearch<CR>", "NOHL"},
      v = { "<cmd>vsplit<CR>", "Split"},
      b = { name = "Buffers" },
      f = { name = "Files" },
      d = { name = "Debug" },
      g = { name = "Git" },
      l = { name = "LSP" },
      p = { name = "Plugins" },
      t = { name = "Test" }
    }
    wk.register(mappings, opts)
  end
}
