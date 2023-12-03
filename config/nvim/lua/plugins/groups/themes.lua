return {
  "catppuccin/nvim",
  name = "catppuccin",
  opts = function() return require("plugins.configs.colors").catppuccin end,
  config = function(_, opts)
    require("catppuccin").setup(opts)
    vim.cmd([[colorscheme catppuccin]])
  end,
}
