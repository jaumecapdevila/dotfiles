return  {
    "rose-pine/neovim",
    name = "rose-pine",
    opts = require("configs.rose-pine"),
    lazy = false,
    priority = 1000,
    config = function(_, opts)
      require("rose-pine").setup(opts)
      vim.cmd("colorscheme rose-pine")
    end,
  }
