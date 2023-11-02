return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    opts = function() return require("plugins.configs.colors").catppuccin end,
    config = function(_, opts)
      require("catppuccin").setup(opts)
      -- vim.cmd("colorscheme catppuccin")
    end,
  },
  {
    "rose-pine/neovim",
    name = "rose-pine",
    lazy = false,
    priority = 1000,
    opts = function() return require("plugins.configs.colors").rosepine end,
    config = function(_, opts)
      require("rose-pine").setup(opts)
      vim.cmd("colorscheme rose-pine")
    end,
  },
  {
    "folke/tokyonight.nvim",
    name = "tokyonight",
    opts = function() return require("plugins.configs.colors").tokyonight end,
    config = function(_, opts)
      require("tokyonight").setup(opts)
      -- vim.cmd("colorscheme tokyonight")
    end,
  },
}
