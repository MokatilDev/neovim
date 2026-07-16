return {
	{
		"nvim-tree/nvim-tree.lua",
		enabled = true,
		opts = {
			view = {
				side = "left",
				width = 30,
			},
			filters = {
				dotfiles = true,
				exclude = {
					".env",
				},
			},
		},
	},
}
