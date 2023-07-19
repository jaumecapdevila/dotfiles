return {
  {
    "mhartington/formatter.nvim",
    name = "formatter",
    init = function()
      require("core.utils").map("formatter")
    end,
    opts = function() return require("plugins.configs.format") end,
    config = function(_, opts)
      require("formatter").setup(opts)
    end,
  }
}
