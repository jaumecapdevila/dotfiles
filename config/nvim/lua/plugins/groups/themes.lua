return {
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
}
