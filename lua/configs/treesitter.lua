local options = {
  ensure_installed = {
    "bash",
    "fish",
    "lua",
    "luadoc",
    "markdown",
    "printf",
    "toml",
    "vim",
    "vimdoc",
    "yaml",
    "go",
    "typescript",
    "javascript",
    "tsx",
    "css",
    "c",
    "cpp",
  },

  highlight = {
    enable = true,
    use_languagetree = true,
    additional_vim_regex_highlighting = false,
  },

  indent = { enable = true },
}

require("nvim-treesitter.configs").setup(options)
