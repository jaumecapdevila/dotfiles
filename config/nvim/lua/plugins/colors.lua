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
    "ellisonleao/gruvbox.nvim",
    cond = vim.g.mood == "Gruvbox Dark" or vim.g.mood == "Gruvbox Soft",
    config = function(_, opts)
      require("gruvbox").setup(opts)
      vim.cmd("colorscheme gruvbox")
    end,
    lazy = false,
    opts = function() return require("configs.gruvbox") end,
  },
  {
    "cocopon/iceberg.vim",
    cond = vim.g.mood == "Iceberg",
    config = function() vim.cmd("colorscheme iceberg") end,
    lazy = false,
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
    "gbprod/nord.nvim",
    cond = vim.g.mood == "Nord",
    config = function(_, opts)
      require("nord").setup(opts)
      vim.cmd("colorscheme nord")
    end,
    lazy = false,
    opts = require("configs.nord"),
  },
  {
    "marko-cerovac/material.nvim",
    cond = vim.g.mood == "Palenight",
    config = function(_, opts)
      require("material").setup(opts)
      vim.cmd("colorscheme material")
    end,
    init = function() vim.g.material_style = "palenight" end,
    lazy = false,
    opts = function() return require("configs.material") end,
    priority = 1000,
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
    cond = vim.g.mood == "Solarized Dark",
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
