return {
  {
    "rcarriga/nvim-notify",
    lazy = true,
    event = "VeryLazy",
    config = function()
      require "notify"
    end,
  },
}
