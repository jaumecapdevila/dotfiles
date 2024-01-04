return {
  {
    "folke/tokyonight.nvim",
    name = "tokyonight",
    opts = function() return require("plugins.configs.tokyonight") end,
    config = function(_, opts)
      require("tokyonight").setup(opts)
      -- vim.cmd([[colorscheme tokyonight]])
    end,
  },
  {
    "marko-cerovac/material.nvim",
    lazy = false,
    priority = 1000,
    name = "material",
    opts = function() return require("plugins.configs.material") end,
    config = function(_, opts)
      require("material").setup(opts)
      vim.cmd([[colorscheme material]])
    end,
  },
}
