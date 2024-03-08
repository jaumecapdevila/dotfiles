return {
  {
    "navarasu/onedark.nvim",
    name = "onedark",
    lazy = false,
    priority = 1000,
    opts = function() return require("plugins.themes.onedark") end,
    config = function(_, opts)
      require("onedark").setup(opts)
      vim.cmd("colorscheme onedark")
    end,
  }
}
