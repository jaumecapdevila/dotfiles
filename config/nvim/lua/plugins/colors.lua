return {
  {
    "kepano/flexoki-neovim",
    cond = vim.g.mood == "Flexoki",
    config = function()
      require("configs.flexoki")
      vim.cmd("colorscheme flexoki")
    end,
    lazy = false,
    name = "flexoki",
  },
  {
    "rebelot/kanagawa.nvim",
    cond = vim.g.mood == "Kanagawa",
    config = function(_, opts)
      require("kanagawa").setup(opts)
      vim.cmd("colorscheme kanagawa")
    end,
    lazy = false,
    opts = require("configs.kanagawa"),
  },
  {
    "savq/melange-nvim",
    cond = vim.g.mood == "Melange",
    config = function()
      vim.cmd("colorscheme melange")
      require("configs.melange")
    end,
    lazy = false,
    name = "Melange",
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
}
