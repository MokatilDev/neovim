return {
	{
		"pmizio/typescript-tools.nvim",
		event = "LspAttach",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"neovim/nvim-lspconfig",
			-- {
			-- 	"saghen/blink.cmp",
			-- 	lazy = false,
			-- 	priority = 1000,
			-- 	build = "cargo build --release",
			-- },
		},
	},
	{
		"axelvc/template-string.nvim",
		event = "InsertEnter",
		ft = {
			"javascript",
			"typescript",
			"javascriptreact",
			"typescriptreact",
		},
		config = true,
	},
}
