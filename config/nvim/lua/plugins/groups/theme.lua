return {
  "marko-cerovac/material.nvim",
  name = "material",
  lazy = false,
  priority = 1000,
  opts = function() return require("plugins.configs.material") end,
  config = function(_, opts)
    require("material").setup(opts)
    vim.cmd([[colorscheme material]])
  end,
}
