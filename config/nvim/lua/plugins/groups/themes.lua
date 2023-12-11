return {
  {
    "marko-cerovac/material.nvim",
    lazy = false,
    priority = 1000,
    name = "material",
    opts = function() return require("plugins.configs.colors").material end,
    config = function(_, opts)
      require("material").setup(opts)
      vim.cmd([[colorscheme material]])
    end,
  }
}
