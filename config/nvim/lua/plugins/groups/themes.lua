return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 1000,
    opts = function() return require("plugins.configs.colors").catppuccin end,
    config = function(_, opts)
      require("catppuccin").setup(opts)
      vim.cmd("colorscheme catppuccin")
    end,
  },

  {
    "Mofiqul/dracula.nvim",
    enabled = false,
    opts = function() return require("plugins.configs.colors").dracula end,
    config = function(_, opts)
      require("dracula").setup(opts)
      vim.cmd("colorscheme dracula")
    end,
  },

  {
    "projekt0n/github-nvim-theme",
    name = "github-theme",
    enabled = false,
    opts = function() return require("plugins.configs.colors").github end,
    config = function(_, opts)
      require("github-theme").setup(opts)
      vim.cmd("colorscheme github_dark_dimmed")
    end,
  },

  {
    "rose-pine/neovim",
    name = "rose-pine",
    enabled = false,
    opts = function() return require("plugins.configs.colors").rosepine end,
    config = function(_, opts)
      require("rose-pine").setup(opts)
      vim.cmd("colorscheme rose-pine")
    end,
  },

  {
    "folke/tokyonight.nvim",
    name = "tokyonight",
    enabled = false,
    opts = function() return require("plugins.configs.colors").tokyonight end,
    config = function(_, opts)
      require("tokyonight").setup(opts)
      vim.cmd("colorscheme tokyonight")
    end,
  },

  {
    "LunarVim/synthwave84.nvim",
    enabled = false,
    name = "synthwave84",
    opts = function() return require("plugins.configs.colors").synthwave84 end,
    config = function(_, opts)
      require("synthwave84").setup(opts)
      vim.cmd("colorscheme synthwave84")
    end,
  },
}
