require("nvchad.autocmds")

vim.api.nvim_create_autocmd("FileType", {
  pattern = "dbout",
  callback = function()
    vim.opt_local.foldenable = false
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "yaml", "docker-compose" },
  callback = function()
    require("cmp").setup.buffer {
      sources = {
        { name = "nvim_lsp" },
        { name = "buffer" },
      },
    }
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "sql", "mysql", "plsql", "postgresql" },
  callback = function()
    require("cmp").setup.buffer {
      sources = {
        { name = "vim-dadbod-completion" },
        { name = "nvim_lsp" },
        { name = "luasnip" },
        { name = "nvim_lua" },
        { name = "buffer" },
      },
    }
  end,
})

vim.api.nvim_create_autocmd({ "BufWritePost", "InsertLeave" }, {
  callback = function()
    require("lint").try_lint()
  end,
})
