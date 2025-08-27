-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")
--
-- Auto-format SQL files on save
-- Auto-format SQL files on save with error handling
vim.api.nvim_create_autocmd("BufWritePre", {
  group = vim.api.nvim_create_augroup("lazyvim_format_sql", { clear = true }),
  pattern = "*.sql",
  callback = function()
    local cursor_pos = vim.api.nvim_win_get_cursor(0)

    -- Try to format and capture any errors
    local success, result = pcall(function()
      vim.cmd("silent %!sql-formatter --language sql 2>&1")
    end)

    if not success then
      vim.notify("SQL formatting failed: " .. tostring(result), vim.log.levels.ERROR)
    end

    pcall(vim.api.nvim_win_set_cursor, 0, cursor_pos)
  end,
})
