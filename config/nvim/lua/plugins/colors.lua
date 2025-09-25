return {
  {
    "Shatur/neovim-ayu",
    cond = vim.g.mood == "Ayu Dark" or vim.g.mood == "Ayu Mirage",
    config = function(_, opts)
      require("ayu").setup(opts)
      vim.cmd("colorscheme ayu")
    end,
    lazy = false,
    opts = function() return require("configs.ayu") end,
  },
  {
    "catppuccin/nvim",
    cond = vim.g.mood == "Catppuccin Mocha" or vim.g.mood == "Catppuccin Frappe",
    config = function(_, opts)
      require("catppuccin").setup(opts)
      vim.cmd("colorscheme catppuccin")
    end,
    lazy = false,
    name = "catppuccin",
    opts = function() return require("configs.catppuccin") end,
  },
  {
    "rebelot/kanagawa.nvim",
    cond = vim.g.mood == "Kanagawa Wave" or vim.g.mood == "Kanagawa Dragon",
    config = function(_, opts)
      require("kanagawa").setup(opts)
      vim.cmd("colorscheme kanagawa")
    end,
    lazy = false,
    opts = require("configs.kanagawa"),
  },
  {
    "rose-pine/neovim",
    cond = vim.g.mood == "Rose Pine" or vim.g.mood == "Rose Pine Moon",
    config = function(_, opts)
      require("rose-pine").setup(opts)
      vim.cmd("colorscheme rose-pine")
    end,
    lazy = false,
    name = "rose-pine",
    opts = require("configs.rose-pine"),
    priority = 1000,
  },
  {
    "Tsuzat/NeoSolarized.nvim",
    cond = vim.g.mood == "Solarized Dark" or vim.g.mood == "Solarized Light",
    config = function(_, opts)
      require("NeoSolarized").setup(opts)
      vim.cmd("colorscheme NeoSolarized")
    end,
    lazy = false,
    opts = require("configs.solarized"),
  },
  {
    "folke/tokyonight.nvim",
    cond = vim.g.mood == "Tokyo Night" or vim.g.mood == "Tokyo Storm",
    opts = require("configs.tokyonight"),
    lazy = false,
    priority = 1000,
    config = function(_, opts)
      require("tokyonight").setup(opts)
      vim.cmd("colorscheme tokyonight")
    end,
  },
}
