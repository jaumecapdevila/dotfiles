return {
  {
    "marko-cerovac/material.nvim",
    name = "material",
    lazy = false,
    priority = 1000,
    opts = function() return require("plugins.themes.material") end,
    config = function(_, opts)
      require("material").setup(opts)
      vim.cmd([[colorscheme material]])
    end,
  },
  {
    "Shatur/neovim-ayu",
    name = "ayu",
    opts = function() return require("plugins.themes.ayu") end,
    config = function(_, opts)
      require("ayu").setup(opts)
      -- vim.cmd([[colorscheme ayu]])
    end,
  },
}
