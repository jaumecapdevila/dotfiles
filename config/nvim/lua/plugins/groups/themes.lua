return {
  {
    "marko-cerovac/material.nvim",
    name = "material",
    lazy = false,
    priority = 1000,
    opts = function() return require("plugins.configs.material") end,
    config = function(_, opts)
      require("material").setup(opts)
      -- vim.cmd([[colorscheme material]])
    end,
  },
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
    "Shatur/neovim-ayu",
    name = "ayu",
    opts = function()
      return {
        mirage = true,
      }
    end,
    config = function(_, opts)
      require("ayu").setup(opts)
      vim.cmd([[colorscheme ayu]])
    end,
  },
}
