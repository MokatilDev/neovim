return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "bash",
        "html",
        "javascript",
        "json",
        "lua",
        "markdown",
        "markdown_inline",
        "python",
        "query",
        "regex",
        "tsx",
        "typescript",
        "vim",
        "yaml",
        "go",
        "gomod",
        "gowork",
        "gosum",
        "sql",
        "dockerfile",
      },
      sync_install = false,
      auto_install = true,
      highlight = {
        enable = true,

        additional_vim_regex_highlighting = false,
      },
    },
  },
}
