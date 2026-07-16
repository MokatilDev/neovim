local options = {
	formatters_by_ft = {
		lua = { "stylua" },
		css = { "biome" },
		html = { "biome" },
		javascript = { "biome" },
		typescript = { "biome" },
		javascriptreact = { "biome" },
		typescriptreact = { "biome" },
		tex = { "tex-fmt" },
		c = { "clang-format" },
		cpp = { "clang-format" },
		go = { "goimports", "gofumpt", "gopls" },
		rust = { "rustfmt" },
		typst = { "typstyle" },
		sql = { "sleek" },
		mysql = { "sleek" },
		plsql = { "sleek" },
		postgresql = { "sleek" },
		sqlite = { "sleek" },
		dbui = { "sleek" },
		dbout = { "sleek" },
		yml = { "yamlfmt" },
	},
	format_on_save = {
		timeout_ms = 500,
		lsp_fallback = true,
	},
}

return options
