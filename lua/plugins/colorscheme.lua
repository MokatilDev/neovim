return {
  -- catppuccin
  {
    "catppuccin/nvim",
    lazy = false,
    priority = 1000,
    name = "catppuccin",
  },
  {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = "nvim-tree/nvim-web-devicons",
    config = function()
      require("bufferline").setup({})
    end,
  },
}
