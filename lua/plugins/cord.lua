return {
	{
		"vyfor/cord.nvim",
		build = ":Cord update",
		event = "VeryLazy",
		opts = {
			log_level = vim.log.levels.INFO,
		},
		config = function()
			require("cord").setup({
				display = {
					theme = "minecraft",
					flavor = "accent",
					swap_fields = true,
				},
				editor = {
					tooltip = "Neovim",
					client = "neovim",
				},
			})
		end,
	},
}
