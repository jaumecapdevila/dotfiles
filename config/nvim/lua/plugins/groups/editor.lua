local u = require("utils")
local k = require("config.keymaps")

return {
  -- colorschemes
  {
    "folke/tokyonight.nvim",
    name = "tokyonight",
    enabled = false,
    opts = function() return require("plugins.themes.tokyonight") end,
    config = function(_, opts)
      require("tokyonight").setup(opts)
      vim.cmd("colorscheme tokyonight")
    end,
  },

  {
    "olivercederborg/poimandres.nvim",
    name = "poimandres",
    lazy = false,
    priority = 1000,
    opts = function() return require("plugins.themes.poimandres") end,
    config = function(_, opts)
      require("poimandres").setup(opts)
      vim.cmd("colorscheme poimandres")
    end,
  },

  {
    "oxfist/night-owl.nvim",
    name = "night-owl",
    enabled = false,
    opts = function() return require("plugins.themes.nightowl") end,
    config = function(_, opts)
      require("night-owl").setup(opts)
      vim.cmd("colorscheme night-owl")
    end,
  },

  -- fuzzy finder
  {
    "nvim-telescope/telescope.nvim",
    cmd = "Telescope",
    dependencies = {
      { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
      { "nvim-telescope/telescope-file-browser.nvim" },
    },
    init = function() u.map(k.telescope) end,
    opts = function() return require("plugins.config.telescope") end,
    config = function(_, opts)
      local telescope = require("telescope")
      telescope.setup(opts)

      -- load extensions
      for _, ext in ipairs(opts.extensions_list) do
        telescope.load_extension(ext)
      end
    end,
  },

  -- keymaps cheatsheet
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    keys = { "<leader>", '"', "'", "`", "c", "v" },
    init = function() u.map(k.whichkey) end,
    opts = function() return require("plugins.config.others").whichkey end,
    config = function(_, opts) require("which-key").setup(opts) end,
  },

  -- dim inactive windows
  {
    "andreadev-it/shade.nvim",
    keys = "<Bslash>",
    config = function()
      require("shade").setup({
        exclude_filetypes = { "NvimTree" },
      })
    end,
  },

  -- smooth scrolling
  {
    "karb94/neoscroll.nvim",
    config = function()
      require("neoscroll").setup({
        hide_cursor = true,
      })
    end,
  },

  -- git integration
  {
    "lewis6991/gitsigns.nvim",
    event = { "BufReadPre", "BufNewFile" },
    opts = function() return require("plugins.config.others").gitsigns end,
    config = function(_, opts) require("gitsigns").setup(opts) end,
  },

  -- improved buffer delete
  {
    "famiu/bufdelete.nvim",
    keys = {
      {
        "<leader>bd",
        function() require("bufdelete").bufdelete(0, false) end,
        desc = "Delete Buffer",
      },
      {
        "<leader>bD",
        function() require("bufdelete").bufdelete(0, true) end,
        desc = "Delete Buffer (Force)",
      },
    },
  },

  -- hihglight colors
  {
    "NvChad/nvim-colorizer.lua",
    event = { "BufReadPre", "BufNewFile" },
    config = true,
  },
}
