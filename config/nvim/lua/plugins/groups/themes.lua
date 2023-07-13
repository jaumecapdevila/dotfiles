return {
  -- vimscript
  {
    "embark-theme/vim",
    name = "embark",
    enabled = false,
    init = function()
      vim.g.embark_terminal_italics = 1
    end,
    config = function()
      vim.cmd("colorscheme embark")
    end,
  },

  {
    "pineapplegiant/spaceduck",
    name = "spaceduck",
    enabled = false,
    config = function()
      vim.cmd("colorscheme spaceduck")
    end,
  },

  -- lua
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
    enabled = false,
    name = "rose-pine",
    opts = function() return require("plugins.configs.colors").rosepine end,
    config = function(_, opts)
      require("rose-pine").setup(opts)
      vim.cmd("colorscheme rose-pine")
    end,
  },

  {
    "folke/tokyonight.nvim",
    enabled = false,
    name = "tokyonight",
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
