return {
	"chomosuke/typst-preview.nvim",
	cmd = { "TypstPreview", "TypstPreviewToggle", "TypstPreviewUpdate" },
	keys = {
		{
			"<leader>cp",
			ft = "typst",
			"<cmd>TypstPreviewToggle<cr>",
			desc = "Toggle Typst Preview",
		},
	},
	opts = {
		dependencies_bin = {
			tinymist = "tinymist",
		},
	},
}
