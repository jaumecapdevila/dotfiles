return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
      "windwp/nvim-ts-autotag",
    },
    lazy = vim.fn.argc(-1) == 0, -- load treesitter early when opening a file from the cmdline
    opts = require("configs.treesitter"),
    config = function(_, opts) require("nvim-treesitter.configs").setup(opts) end,
  },

  {
    "davidmh/mdx.nvim",
    config = true,
    event = "BufEnter *.mdx",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
  },
}
