return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    enabled = false,
    opts = function() return require("plugins.configs.colors").catppuccin end,
    config = function(_, opts)
      require("catppuccin").setup(opts)
      vim.cmd("colorscheme catppuccin")
    end,
  },

  {
    "folke/tokyonight.nvim",
    name = "tokyonight",
    lazy = false,
    priority = 1000,
    opts = function() return require("plugins.configs.colors").tokyonight end,
    config = function(_, opts)
      require("tokyonight").setup(opts)
      vim.cmd("colorscheme tokyonight")
    end,
  },
}
