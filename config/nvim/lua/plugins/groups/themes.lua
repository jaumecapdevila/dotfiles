return {
  {
    "kaicataldo/material.vim",
    name = "material-vim",
    lazy = false,
    priority = 1000,
    init = function()
      vim.g.material_terminal_italics = 1
      vim.g.material_theme_style = "ocean" -- default, palenight, ocean
    end,
    config = function() vim.cmd("colorscheme material") end,
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
