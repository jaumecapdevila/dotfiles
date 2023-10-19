return {
  {
    "catppuccin/nvim",
    priority = 1000,
    name = "catppuccin",
    lazy = false,
    opts = function() return require("plugins.configs.colors").catppuccin end,
    config = function(_, opts)
      require("catppuccin").setup(opts)
      vim.cmd("colorscheme catppuccin")
    end,
  },
}
