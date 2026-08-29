local options = {
	formatters_by_ft = {
		lua = { "stylua" },
		css = { "prettier" },
		html = { "prettier" },
		javascript = { "prettier" },
		typescript = { "prettier" },
		javascriptreact = { "prettier" },
		typescriptreact = { "prettier" },
		tex = { "tex-fmt" },
		c = { "clang-format" },
		cpp = { "clang-format" },
		go = { "goimports", "gofumpt" },
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
		json = { "prettier" },
	},
	format_on_save = {
		timeout_ms = 500,
		lsp_fallback = true,
	},
}

return options
