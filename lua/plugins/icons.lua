return {
  {
    "DaikyXendo/nvim-material-icon",
    lazy = true,
    config = function()
      local icons = require("nvim-material-icon")
      icons.setup({
        -- you can override or add custom icons here
        -- example: custom = { lua = { icon = "", name = "Lua" } },
      })
    end,
  },
}
