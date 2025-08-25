return {
  "folke/tokyonight.nvim",
  name = "tokyonight",
  opts = require("configs.tokyonight"),
  lazy = false,
  priority = 1000,
  config = function(_, opts)
    require("tokyonight").setup(opts)
    vim.cmd("colorscheme tokyonight")
  end,
}
