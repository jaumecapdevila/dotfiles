return {
  "marko-cerovac/material.nvim",
  name = "material",
  opts = require("configs.material"),
  lazy = false,
  priority = 1000,
  config = function(_, opts)
    require("material").setup(opts)
    vim.cmd("colorscheme material-palenight")
  end,
}
