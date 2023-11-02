return {
  "nvim-lua/plenary.nvim",
  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
    enabled = false,
  },
  {
    "akinsho/toggleterm.nvim",
    opts = function() return require("plugins.configs.term") end,
    config = function(_, opts) require("toggleterm").setup(opts) end,
  },
}
