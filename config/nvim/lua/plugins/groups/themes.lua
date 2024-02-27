return {
  {
    "marko-cerovac/material.nvim",
    name = "material",
    lazy = false,
    priority = 1000,
    opts = function() return require("plugins.themes.material") end,
    config = function(_, opts)
      require("material").setup(opts)
      -- vim.cmd("colorscheme material)
    end,
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
}
