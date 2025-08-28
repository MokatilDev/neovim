return {
  -- lazy.nvim
  {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    ---@type snacks.Config
    opts = {
      image = { enabled = true },
      bigfile = { enabled = true },
      explorer = {},
      picker = {
        sources = {
          explorer = { enabled = true },
        },
      },
      words = { enabled = true },
      scroll = { enabled = true },
    },
  },
}
