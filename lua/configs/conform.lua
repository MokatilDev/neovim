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
		go = { "goimports", "gofumpt" },
		rust = { "rustfmt" },
	},
	format_on_save = {
		timeout_ms = 500,
		lsp_fallback = true,
	},
}

return options
