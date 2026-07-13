require("nvchad.configs.lspconfig").defaults()

local servers = {
	"lua_ls",
	"biome",
	"sqlls",
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
	"arduino-language-server",
}

vim.lsp.enable(servers)

vim.filetype.add({
	extension = {
		typ = "typst",
		mdx = "markdown",
	},
})

vim.lsp.config.prismals = {
	filetypes = {
		"prisma",
	},
}

vim.lsp.config.mdx_analyzer = {
	filetypes = {
		"md",
		"mdx",
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
	filetypes = {
		"html",
		"css",
		"scss",
		"javascript",
		"javascriptreact",
		"typescript",
		"typescriptreact",
	},
}

vim.lsp.config.lua_ls = {
	filetypes = {
		"lua",
	},
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

vim.lsp.config("arduino_language_server", {
	capabilities = {
		textDocument = {
			semanticTokens = vim.NIL,
		},
		workspace = {
			semanticTokens = vim.NIL,
		},
	},

	cmd = {
		"arduino-language-server",
		"-cli-config",
		"path to your cli configs go here",
		"-fqbn",
		"arduino:avr:exampleText",
		"-cli",
		"arduino-cli",
		"-clangd",
		"clangd",
	},

	filetypes = { "arduino" },

	root_dir = function(bufnr, on_dir)
		on_dir(vim.fn.expand("%:p:h"))
	end,
})

-- read :h vim.lsp.config for changing options of lsp servers
