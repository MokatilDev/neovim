return {
  { "LazyVim/LazyVim", opts = {
    colorscheme = "catppuccin",
  } },

  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    dependencies = {
      "akinsho/bufferline.nvim",
    },
    config = function()
      require("catppuccin").setup({
        --  flavour = "mocha",
        integrations = {
          bufferline = true,
          treesitter = true,
          native_lsp = {
            enabled = true,
            underlines = {
              errors = { "underdashed" },
              hints = { "underdashed" },
              warnings = { "underdashed" },
              information = { "underdashed" },
            },
          },
          float = true,
          gitsigns = true,
          telescope = true,
          nvimtree = true,
          which_key = true,
        },
      })
    end,
  },
}
