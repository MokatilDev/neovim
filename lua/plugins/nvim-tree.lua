return {
	{
		"nvim-tree/nvim-tree.lua",
		enabled = true,
		opts = {
			view = {
				side = "left",
				width = 35,
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
