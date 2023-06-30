return {
  {
    "nvim-tree/nvim-web-devicons",
    config = function(_, opts) require("nvim-web-devicons").setup(opts) end,
  },

  {
    "folke/noice.nvim",
    event = "VeryLazy",
    dependencies = {
      -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
      "MunifTanjim/nui.nvim",
      -- OPTIONAL:
      --   `nvim-notify` is only needed, if you want to use the notification view.
      --   If not available, we use `mini` as the fallback
      "rcarriga/nvim-notify",
    },
    opts = function()
      return require("plugins.configs.noice")
    end,
    config = function(_, opts) require("noice").setup(opts) end,
  },

  {
    "goolord/alpha-nvim",
    event = "VimEnter",
    opts = function() return require("plugins.configs.dashboard") end,
    config = function(_, dashboard) require("alpha").setup(dashboard.opts) end,
  },

  -- render indent lines
  {
    "lukas-reineke/indent-blankline.nvim",
    enabled = false,
    event = { "BufReadPost", "BufNewFile" },
    opts = function() return require("plugins.configs.others").blankline end,
    config = function(_, opts) require("indent_blankline").setup(opts) end,
  },

  -- buffer management
  {
    "akinsho/bufferline.nvim",
    event = "VeryLazy",
    keys = {
      { "<leader>bp", "<Cmd>BufferLineTogglePin<CR>", desc = "Toggle pin" },
      {
        "<leader>bP",
        "<Cmd>BufferLineGroupClose ungrouped<CR>",
        desc = "Delete non-pinned buffers",
      },
    },
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
