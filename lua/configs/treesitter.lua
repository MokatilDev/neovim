local options = {
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

	highlight = {
		enable = true,
		use_languagetree = true,
		additional_vim_regex_highlighting = false,
	},

	indent = { enable = true },

	autotag = {
		enable = true,
	},
}

require("nvim-treesitter.configs").setup(options)
