return {
  {
    "Shatur/neovim-ayu",
    cond = vim.g.mood == "Ayu Mirage",
    config = function(_, opts)
      require("ayu").setup(opts)
      vim.cmd("colorscheme ayu")
    end,
    lazy = false,
    opts = function() return require("configs.ayu") end,
  },
  {
    "ellisonleao/gruvbox.nvim",
    cond = vim.g.mood == "Gruvbox Dark Hard"
      or vim.g.mood == "Gruvbox Dark Soft",
    config = function(_, opts)
      require("gruvbox").setup(opts)
      vim.cmd("colorscheme gruvbox")
    end,
    lazy = false,
    opts = function() return require("configs.gruvbox") end,
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
    opts = require("configs.neosolarized"),
  },
  {
    "datsfilipe/vesper.nvim",
    cond = vim.g.mood == "Vesper",
    config = function(_, opts)
      require("vesper").setup(opts)
      vim.cmd("colorscheme vesper")
    end,
    lazy = false,
    opts = function() return require("configs.vesper") end,
  },
}
