local dap = require("dap")
local dapui = require("dapui")

dapui.setup()
dap.listeners.after.event_initialized["dapui_config"] = function()
	dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
	dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
	dapui.close()
end

local adapters = { "codelldb", "go-debug-adapter", "cpptools", "delve", "local-lua-debugger-vscode", "debugpy" }
local mason_dap = require("mason-nvim-dap")
mason_dap.setup({
	ensure_installed = adapters,
	handlers = {
		function(config)
			require("mason-nvim-dap").default_setup(config)
		end,
	},
})
