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
    "neanias/everforest-nvim",
    cond = vim.g.mood == "Everforest",
    config = function(_, opts)
      require("everforest").setup(opts)
      vim.cmd("colorscheme everforest")
    end,
    lazy = false,
    name = "Everforest",
    opts = function() return require("configs.everforest") end,
  },
  {
    "kepano/flexoki-neovim",
    cond = vim.g.mood == "Flexoki Dark",
    config = function()
      require("configs.flexoki")
      vim.cmd("colorscheme flexoki")
    end,
    lazy = false,
    name = "Flexoki",
  },
  {
    "olimorris/onedarkpro.nvim",
    cond = vim.g.mood == "OneDarkPro" or vim.g.mood == "OneDarkPro Black",
    config = function(_, opts)
      require("onedarkpro").setup(opts)
      local black = vim.g.mood == "OneDarkPro Black"

      if black then
        vim.cmd("colorscheme onedark_dark")
      else
        vim.cmd("colorscheme onedark_vivid")
      end
    end,
    lazy = false,
    opts = function() return require("configs.onedark") end,
  },
  {
    "ellisonleao/gruvbox.nvim",
    cond = vim.g.mood == "Gruvbox Dark",
    config = function(_, opts)
      require("gruvbox").setup(opts)
      vim.cmd("colorscheme gruvbox")
    end,
    lazy = false,
    opts = function() return require("configs.gruvbox") end,
  },
  {
    "rebelot/kanagawa.nvim",
    cond = vim.g.mood == "Kanagawa Wave",
    config = function(_, opts)
      require("kanagawa").setup(opts)
      vim.cmd("colorscheme kanagawa")
    end,
    lazy = false,
    opts = require("configs.kanagawa"),
  },
  {
    "bluz71/vim-nightfly-colors",
    cond = vim.g.mood == "Nightfly",
    config = function()
      vim.g.nightflyCursorColor = true
      vim.g.nightflyItalics = true
      vim.g.nightflyNormalFloat = true
      vim.g.nightflyTransparent = vim.g.transparent
      vim.g.nightflyWinSeparator = 0
      vim.cmd("colorscheme nightfly")
    end,
    lazy = false,
  },
  {
    "marko-cerovac/material.nvim",
    cond = vim.g.mood == "Palenight",
    config = function(_, opts) require("material").setup(opts) vim.cmd("colorscheme material") end,
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
}
