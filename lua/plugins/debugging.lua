return {
	"mfussenegger/nvim-dap",
	dependencies = {
		"rcarriga/nvim-dap-ui",
		dependencies = {
			"nvim-neotest/nvim-nio",
		},
	},
	config = function()
		local dap = require("dap")
		local dapui = require("dapui")

		dapui.setup()

		dap.listeners.before.attach.dapui_config = function()
			dapui.open()
		end
		dap.listeners.before.launch.dapui_config = function()
			dapui.open()
		end
		dap.listeners.before.event_terminated.dapui_config = function()
			dapui.close()
		end
		dap.listeners.before.event_exited.dapui_config = function()
			dapui.close()
		end

		-- start codelldb automatically
		dap.adapters.codelldb = {
			type = "server",
			port = "${port}",
			executable = {
				command = "/home/sourav/.local/share/nvim/mason/packages/codelldb/extension/adapter/codelldb",
				args = { "--port", "${port}" },
			},
		}

		-- configuration for codelldb
		dap.configurations.cpp = {
			{
				name = "Launch file",
				type = "codelldb",
				request = "launch",
				program = function()
					return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
				end,
				cwd = "${workspaceFolder}",
				stopOnEntry = false,
			},
		}

		dap.configurations.c = dap.configurations.cpp

		local wk = require("which-key")
		local mappings = {
			["<leader>db"] = { "<cmd>DapToggleBreakpoint<CR>", "toggle breakpoint" },
			["<leader>dc"] = { "<cmd>DapContinue<CR>", "continue" },
			["<leader>di"] = { "<cmd>DapStepInto<CR>", "step into" },
			["<leader>do"] = { "<cmd>DapStepOver<CR>", "step over" },
			["<leader>dt"] = { "<cmd>DapTerminate<CR>", "terminate" },
			["<leader>dO"] = { "<cmd>DapStepOut<CR>", "step out" },
		}
		wk.register(mappings)
	end,
}