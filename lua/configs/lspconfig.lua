require("nvchad.configs.lspconfig").defaults()

local servers = {
	"lua_ls",
	"biome",
	"sqls",
	"html",
	"texlab",
	"emmet_ls",
	"tailwindcss",
	"gopls",
	"clangd",
	"ts_ls",
	"prismals",
	"mdx_analyzer",
	"pylsp",
	"tinymist",
	"arduino_language_server",
	"docker_compose_language_service",
	"docker_language_server",
	"yaml_language_server",
	"json_lsp",
	"cssls",
	"bash_language_server",
	"eslint_lsp",
}

vim.lsp.enable(servers)
vim.lsp.config("bash_language_server", {
	filetypes = { "shell", "sh" },
})

vim.lsp.config("jsonls", {
	cmd = { "vscode-json-language-server", "--stdio" },
	filetypes = { "json", "jsonc" },
	root_markers = { ".git" },
	capabilities = vim.lsp.protocol.make_client_capabilities(),
})

vim.lsp.enable("jsonls")

vim.filetype.add({
	extension = {
		typ = "typst",
		mdx = "mdx",
	},
})

vim.lsp.config.json_lsp = { filetypes = { "json", "jsonc" } }
vim.lsp.config.yaml_language_server = { filetypes = { "yaml" } }
vim.lsp.config.prismals = { filetypes = { "prisma" } }
vim.lsp.config.mdx_analyzer = { filetypes = { "md", "mdx" } }
vim.lsp.config.lua_ls = { filetypes = { "lua" } }
vim.lsp.config.docker_compose_language_service = { filetypes = { "yaml", "yaml.docker-compose", "dockercompose" } }
vim.lsp.config.eslint_lsp = {
	filetypes = {
		"css",
		"html",
		"javascript",
		"typescript",
		"javascriptreact",
		"less",
		"sass",
		"scss",
		"typescriptreact",
	},
}

vim.lsp.config.emmet_ls = {
	filetypes = {
		"css",
		"html",
		"javascript",
		"typescript",
		"javascriptreact",
		"less",
		"sass",
		"scss",
		"typescriptreact",
	},
	init_options = {
		html = {
			options = {
				["bem.enabled"] = true,
				["output.attributeQuotes"] = "double",
			},
		},
	},
}

vim.lsp.config.tailwindcss = {
	filetypes = { "html", "css", "scss", "javascript", "javascriptreact", "typescript", "typescriptreact" },
}

vim.lsp.config.cssls = {
	settings = {
		css = {
			validate = true,
			lint = {
				unknownAtRules = "ignore",
			},
		},
	},
}

vim.lsp.config.arduino_language_server = {
	cmd = {
		"arduino-language-server",
		"-cli-config",
		vim.fn.expand("~/.arduino15/arduino-cli.yaml"),
		"-fqbn",
		"arduino:avr:uno",
		"-cli",
		"arduino-cli",
		"-clangd",
		"clangd",
	},

	filetypes = { "arduino" },
	root_dir = function(_, on_dir)
		on_dir(vim.fn.expand("%:p:h"))
	end,
}

vim.lsp.config("*", {
	capabilities = vim.tbl_deep_extend(
		"force",
		vim.lsp.protocol.make_client_capabilities(),
		require("lsp-file-operations").default_capabilities()
	),
})

-- read :h vim.lsp.config for changing options of lsp servers
