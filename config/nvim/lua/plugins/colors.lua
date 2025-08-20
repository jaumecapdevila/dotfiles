local mood = vim.g.mood

return {
  {
    "rose-pine/neovim",
    name = "rose-pine",
    opts = require("configs.rose-pine"),
    lazy = false,
    priority = 1000,
    cond = mood == "main" or mood == "moon",
    config = function(_, opts)
      require("rose-pine").setup(opts)
      vim.cmd("colorscheme rose-pine")
    end,
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    opts = require("configs.catppuccin"),
    lazy = false,
    priority = 1000,
    cond = mood == "mocha" or mood == "frappe",
    config = function(_, opts)
      require("catppuccin").setup(opts)
      vim.cmd("colorscheme catppuccin")
    end,
  }
}
