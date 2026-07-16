require("lint").linters_by_ft = {
	dockerfile = { "hadolint" },
	sql = { "sqlfluff" },
	typescript = { "biome" },
	go = { "golangci-lint" },
}
