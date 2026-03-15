return {
	"mfussenegger/nvim-dap",
	keys = {
		{
			"<leader>dt",
			function()
				require("dap").toggle_breakpoint()
			end,
			desc = "Dap toggle breakpoint",
		},
		{
			"<leader>dc",
			function()
				require("dap").continue()
			end,
			desc = "Dap continue",
		},
	},
}
