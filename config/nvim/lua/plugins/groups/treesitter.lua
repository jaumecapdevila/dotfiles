return {
  {
    "nvim-treesitter/nvim-treesitter",
    cmd = { "TSInstall", "TSBufEnable", "TSBufDisable", "TSModuleInfo" },
    build = ":TSUpdate",
    opts = function() return require("plugins.configs.treesitter") end,
    config = function(_, opts) require("nvim-treesitter.configs").setup(opts) end,
  },

  {
    "nvim-treesitter/nvim-treesitter-context",
    event = "BufReadPre",
    opts = { mode = "cursor" },
  },
}
