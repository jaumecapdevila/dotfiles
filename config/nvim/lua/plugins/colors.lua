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
    cond = vim.g.mood == "Solarized",
    config = function(_, opts)
      require("NeoSolarized").setup(opts)
      vim.cmd("colorscheme NeoSolarized")
    end,
  },
  {
    "kepano/flexoki-neovim",
    name = "flexoki",
    lazy = false,
    priority = 1000,
    cond = vim.g.mood == "Flexoki",
    config = function()
      vim.cmd("colorscheme flexoki")
    end,
  },
  {
    "srcery-colors/srcery-vim",
    name = "srcery",
    lazy = false,
    cond = vim.g.mood == "Srcery",
    init = function()
      vim.g.srcery_bold = 1
      vim.g.srcery_italic = 1
      vim.g.srcery_italic_types = 1
      vim.g.srcery_bg_passthrough = vim.g.transparent and 1 or 0
    end,
    config = function()
      vim.cmd("colorscheme srcery")
    end,
  }
}
