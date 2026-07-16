require("nvchad.options")

local o = vim.o
o.shiftwidth = 2
o.tabstop = 2
o.softtabstop = 2

vim.g.vscode_snippets_path = "~/.vscode/extensions/pulkitgangwar.nextjs-snippets-1.0.3"
vim.filetype.add({
	extension = {
		postcss = "css",
	},
	filename = {
		["postcss.config.js"] = "javascript",
	},
})

vim.notify = require("notify")
-- vim.opt.spell = true
-- vim.opt.spelllang = "en_us"

vim.diagnostic.config({
	source = true,

	virtual_text = {
		multiline = true,
		prefix = "●",
		spacing = 4,
	},

	severity_sort = true,

	float = {
		source = true,
		border = "rounded",
		focusable = false,
	},

	underline = true,
})

o.cursorlineopt = "both"
