return {
  {
    "rose-pine/neovim",
    name = "rose-pine",
    opts = require("configs.rose-pine"),
    lazy = false,
    priority = 1000,
    cond = vim.g.mood == "Rose Pine" or vim.g.mood == "Rose Pine Moon",
    config = function(_, opts)
      require("rose-pine").setup(opts)
      vim.cmd("colorscheme rose-pine")
    end,
  },
  {
    "Tsuzat/NeoSolarized.nvim",
    lazy = false,
    opts = require("configs.neosolarized"),
    cond = vim.g.mood == "Solarized Dark",
    config = function(_, opts)
      require("NeoSolarized").setup(opts)
      vim.cmd("colorscheme NeoSolarized")
    end,
  },
  {
    "rebelot/kanagawa.nvim",
    lazy = false,
    opts = require("configs.kanagawa"),
    cond = vim.g.mood == "Kanagawa",
    config = function(_, opts)
      require("kanagawa").setup(opts)
      vim.cmd("colorscheme kanagawa")
    end,
  },
  {
    "kepano/flexoki-neovim",
    name = "flexoki",
    lazy = false,
    priority = 1000,
    cond = vim.g.mood == "Flexoki",
    config = function()
      require("configs.flexoki")
      vim.cmd("colorscheme flexoki")
    end,
  },
}
