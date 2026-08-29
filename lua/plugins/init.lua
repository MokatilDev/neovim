return {
	{
		"stevearc/conform.nvim",
		event = "BufWritePre",
		opts = require("configs.conform"),
	},

	{
		"nvchad/ui",
		config = function()
			require("nvchad")
		end,
	},

	{
		"nvchad/base46",
		lazy = true,
		build = function()
			require("base46").load_all_highlights()
		end,
	},

	{
		"neovim/nvim-lspconfig",
		config = function()
			require("configs.lspconfig")
		end,
	},

	{
		"nvim-treesitter/nvim-treesitter",
		opts = {
			ensure_installed = {
				"bash",
				"fish",
				"printf",
				"toml",
				"vim",
				"vimdoc",
				"yaml",
				"lua",
				"luadoc",
				"markdown",
				"markdown_inline",
				"html",
				"css",
				"scss",
				"javascript",
				"typescript",
				"tsx",
				"jsdoc",
				"go",
				"gomod",
				"gosum",
				"gowork",
				"sql",
				"prisma",
				"c",
				"cpp",
				"rust",
				"arduino",
				"dockerfile",
				"json",
				"jsonc",
				"python",
				"latex",
				"typst",
			},
		},
	},

	{
		"folke/todo-comments.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		lazy = false,
		config = function()
			require("todo-comments").setup()
		end,
	},
}
