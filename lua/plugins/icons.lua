return {
  "DaikyXendo/nvim-material-icon",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-web-devicons").setup({

      override = {
        zsh = {
          icon = "",
          color = "#428850",
          cterm_color = "65",
          name = "Zsh",
        },
      },

      color_icons = true,
      default = true,
    })
  end,
}
