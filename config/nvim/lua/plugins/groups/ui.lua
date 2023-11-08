return {
  {
    "nvim-tree/nvim-web-devicons",
    config = function(_, opts) require("nvim-web-devicons").setup(opts) end,
  },

  {
    "folke/noice.nvim",
    event = "VeryLazy",
    dependencies = {
      "MunifTanjim/nui.nvim",
      {
        "rcarriga/nvim-notify",
        opts = function() return require("plugins.configs.notify") end,
        config = function(_, opts) require("notify").setup(opts) end,
      },
    },
    opts = function() return require("plugins.configs.noice") end,
    config = function(_, opts) require("noice").setup(opts) end,
  },

  {
    "goolord/alpha-nvim",
    event = "VimEnter",
    opts = function() return require("plugins.configs.dashboard") end,
    config = function(_, dashboard) require("alpha").setup(dashboard.opts) end,
  },

  -- file explorer
  {
    "nvim-tree/nvim-tree.lua",
    cmd = { "NvimTreeToggle", "NvimTreeFocus" },
    init = function() require("core.utils").map("nvim_tree") end,
    opts = function() return require("plugins.configs.nvim-tree") end,
    config = function(_, opts)
      require("nvim-tree").setup(opts)
      vim.g.nvimtree_side = opts.view.side
    end,
  },

  -- buffer management
  {
    "akinsho/bufferline.nvim",
    event = "VeryLazy",
    enabled = false,
    init = function() require("core.utils").map("bufferline") end,
    opts = function() return require("plugins.configs.bufferline") end,
    config = function(_, opts) require("bufferline").setup(opts) end,
  },

  -- custom statusline
  {
    "nvim-lualine/lualine.nvim",
    -- event = "VeryLazy",
    opts = function() return require("plugins.configs.lualine") end,
    config = function(_, opts) require("lualine").setup(opts) end,
  },
}
