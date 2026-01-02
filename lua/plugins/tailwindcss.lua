return {
  -- {
  --   "razak17/tailwind-fold.nvim",
  --   opts = {
  --     min_chars = 50,
  --   },
  --   dependencies = { "nvim-treesitter/nvim-treesitter" },
  --   ft = { "html", "svelte", "astro", "vue", "typescriptreact" },
  -- },

  {
    "laytan/tailwind-sorter.nvim",
    cmd = {
      "TailwindSort",
      "TailwindSortOnSaveToggle",
    },
    keys = {
      { "<Leader>cS", "<CMD>TailwindSortOnSaveToggle<CR>", desc = "toggle Tailwind CSS classes sort on save" },
    },
    dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-lua/plenary.nvim" },
    build = "cd formatter && npm i && npm run build",
    config = true,
  },
}
