require("nvchad.mappings")

local map = vim.keymap.set
local opts = { silent = true, noremap = true }
local builtin = require("telescope.builtin")

map("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
map("n", "<leader>fr", builtin.lsp_references, { desc = "Telescope LSP references" })
map("n", ";", ":", { desc = "CMD enter command mode" })

map("n", "ss", ":vsplit<Return>", opts)
map("n", "sv", ":split<Return>", opts)

map("n", "te", ":tabedit", opts)
-- map("n", "<tab>", ":tabnext<Return>", opts)
-- map("n", "<s-tab>", ":tabprev<Return>", opts)

map("i", "jk", "<ESC>")

map("n", "<leader>fc", function()
	builtin.find_files({
		cwd = vim.fn.stdpath("config"),
	})
end, { desc = "Search Neovim config files" })

map("n", "<leader><leader>", "<C-w>w", { desc = "Switch windows" })
map("n", "<C-f>", function()
	require("conform").format({ async = true, lsp_fallback = true })
end, { desc = "Format file" })

map("n", "<leader>db", "<cmd>DapToggleBreakpoint<cr>", { desc = "DAP Toggle Breakpoint" })
map("n", "<leader>dp", function()
	require("dapui").toggle()
end, { desc = "Toggle DAP UI" })
map("n", "<leader>dr", "<cmd>DapContinue<cr>", { desc = "DAP Continue/Start" })
map("n", "<leader>di", "<cmd>DapStepInto<cr>", { desc = "DAP Step Into" })
map("n", "<leader>do", "<cmd>DapStepOver<cr>", { desc = "DAP Step Over" })
map("n", "<leader>dx", "<cmd>DapTerminate<cr>", { desc = "DAP Stop/Terminate" })

map("n", "<leader>pe", "<cmd>:lua vim.diagnostic.setqflist()<cr>", { desc = "Show Project Errors" })
