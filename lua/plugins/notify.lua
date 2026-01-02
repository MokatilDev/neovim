return {
	{
		"rcarriga/nvim-notify",
		lazy = true,
		event = "VeryLazy",
		config = function()
			require("notify").setup({
				fps = 60,
				timeout = 1000,
				render = "compact",
			})
		end,
	},
}
