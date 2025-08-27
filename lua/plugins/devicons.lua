return {
  {
    "nvim-tree/nvim-web-devicons",
    dependencies = {
      "DaikyXendo/nvim-material-icon",
    },
    config = function()
      require("nvim-web-devicons").setup({
        color_icons = true,
        default = true,
      })
    end,
  },
}
