require("lint").linters_by_ft = {
	dockerfile = { "hadolint" },
	sql = { "sqlfluff" },
	typescript = { "biome", "oeslint_lsp" },
	go = { "golangci-lint" },
}
