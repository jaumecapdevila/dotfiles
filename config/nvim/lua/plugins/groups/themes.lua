return {
  {
    "kaicataldo/material.vim",
    name = "material-vim",
    init = function()
      vim.g.material_terminal_italics = 1
      vim.g.material_theme_style = "default" -- default, palenight, ocean
    end,
    -- config = function() vim.cmd("colorscheme material") end,
  },
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
  },
  {
    "marko-cerovac/material.nvim",
    name = "material",
    enabled = false,
    init = function()
      vim.g.material_style = "oceanic" -- oceanic, palenight
    end,
    opts = function() return require("plugins.themes.material") end,
    config = function(_, opts)
      require("material").setup(opts)
      vim.cmd("colorscheme material")
    end,
  },
}
