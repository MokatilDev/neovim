require "nvchad.mappings"

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<leader>fc", "<cmd>Telescope find_files cwd=~/.config/nvim<cr>", { desc = "Neovim config files" })
map("n", "<leader><leader>", "<C-w>w", { desc = "Switch windows" })
map("n", "<C-f>", function()
  require("conform").format { async = true, lsp_fallback = true }
end, { desc = "Format file" })
map("i", "<C-z>", "<C-o>u", { noremap = true, silent = true })
map("i", "<C-S-z>", "<C-o><C-r>", { noremap = true, silent = true })
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
