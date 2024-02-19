return {
  {
    "marko-cerovac/material.nvim",
    name = "material",
    opts = function() return require("plugins.configs.material") end,
    config = function(_, opts)
      require("material").setup(opts)
      -- vim.cmd([[colorscheme material]])
    end,
  },
  {
    "Shatur/neovim-ayu",
    name = "ayu",
    lazy = false,
    priority = 1000,
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
