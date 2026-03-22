return {
	"rcarriga/nvim-dap-ui",
	requires = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" },
	config = function()
		require("dapui").setup()
	end,
}
