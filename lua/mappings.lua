require("nvchad.mappings")

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<leader>fc", "<cmd>cd ~/.config/nvim<cr><cmd><C-n><cr>", { desc = "Neovim config files" })
map("n", "<leader><leader>", "<C-w>w", { desc = "Switch windows" })
map("n", "<C-f>", function()
	require("conform").format({ async = true, lsp_fallback = true })
end, { desc = "Format file" })

map("n", "<leader>db", "<cmd>DapToggleBreakpoint<cr>", { desc = "DAP Toggle Breakpoint" })
map("n", "<leader>dr", "<cmd>DapContinue<cr>", { desc = "DAP Continue/Start" })
map("n", "<leader>di", "<cmd>DapStepInto<cr>", { desc = "DAP Step Into" })
map("n", "<leader>do", "<cmd>DapStepOver<cr>", { desc = "DAP Step Over" })
map("n", "<leader>dx", "<cmd>DapTerminate<cr>", { desc = "DAP Stop/Terminate" })
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
