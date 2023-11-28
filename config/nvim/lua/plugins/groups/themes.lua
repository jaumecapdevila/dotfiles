return {
  {
    "marko-cerovac/material.nvim",
    lazy = false,
    priority = 1000,
    name = "material",
    opts = function()
      local base = require("material.colors")
      return require("plugins.configs.colors").material(base)
    end,
    config = function(_, opts)
      require("material").setup(opts)
      vim.cmd([[colorscheme material]])
    end,
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    opts = function() return require("plugins.configs.colors").catppuccin end,
    config = function(_, opts)
      require("catppuccin").setup(opts)
      -- vim.cmd([[colorscheme catppuccin]])
    end,
  },
  {
    "rose-pine/neovim",
    name = "rose-pine",
    opts = function() return require("plugins.configs.colors").rosepine end,
    config = function(_, opts)
      require("rose-pine").setup(opts)
      -- vim.cmd([[colorscheme rose-pine]])
    end,
  },
}
