return {
  {
    "vyfor/cord.nvim",
    build = ":Cord update",
    event = "VeryLazy",
    opts = {
      log_level = vim.log.levels.INFO,
    },
    config = function()
      require("cord").setup({
        -- Your configuration options go here
        display = {
          theme = "atom",
          flavor = "accent",
          swap_fields = true,
        },
        editor = {
          tooltip = "Neovim",
          client = "neovim",
        },
        idle = {
          icon = "https://raw.githubusercontent.com/vyfor/icons/master/icons/atom/accent/keyboard.png",
        },
      })
    end,
  },
}
