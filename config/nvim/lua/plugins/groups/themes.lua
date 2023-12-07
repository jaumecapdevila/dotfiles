return {
  {
    "rose-pine/neovim",
    name = "rose-pine",
    lazy = false,
    priotity = 1000,
    opts = function() return require("plugins.configs.colors").rosepine end,
    config = function(_, opts)
      require("rose-pine").setup(opts)
      vim.cmd([[colorscheme rose-pine]])
    end,
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    opts = function() return require("plugins.configs.colors").catppuccin end,
    config = function(_, opts)
      require("catppuccin").setup(opts)
      -- vim.cmd([[colorscheme catppuccin]])
    end,
  }
}
