return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  name = "tokyonight",
  opts = function() return require("plugins.configs.tokyonight") end,
  config = function(_, opts)
    require("tokyonight").setup(opts)
    vim.cmd([[colorscheme tokyonight]])
  end,
}
