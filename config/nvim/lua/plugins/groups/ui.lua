local u = require("utils")
local k = require("config.keymaps")

return {
  -- improved ui interfaces
  {
    "stevearc/dressing.nvim",
    event = "VeryLazy",
  },

  {
    "nvim-tree/nvim-web-devicons",
    config = function(_, opts) require("nvim-web-devicons").setup(opts) end,
  },

  -- improved notifications
  {
    "rcarriga/nvim-notify",
    keys = {
      {
        "<leader>un",
        function() require("notify").dismiss({ silent = true, pending = true }) end,
        desc = "Dismiss all Notifications",
      },
    },
    opts = function() return require("plugins.config.notify") end,
    config = function(_, opts) require("notify").setup(opts) end,
  },

  {
    "folke/noice.nvim",
    event = "VeryLazy",
    dependencies = { "MunifTanjim/nui.nvim" },
    opts = function() return require("plugins.config.noice") end,
    config = function(_, opts) require("noice").setup(opts) end,
  },

  -- custom start screen
  {
    "goolord/alpha-nvim",
    event = "VimEnter",
    enabled = true,
    opts = function() return require("plugins.config.dashboard") end,
    config = function(_, dashboard)
      require("alpha").setup(dashboard.opts)
      -- Disable folding on alpha buffer
      vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
    end,
  },

  -- file explorer
  {
    "nvim-tree/nvim-tree.lua",
    cmd = { "NvimTreeToggle", "NvimTreeFocus" },
    init = function() u.map(k.nvim_tree) end,
    opts = function() return require("plugins.config.nvim-tree") end,
    config = function(_, opts)
      require("nvim-tree").setup(opts)
      vim.g.nvimtree_side = opts.view.side
    end,
  },

  -- custom statusline
  {
    "nvim-lualine/lualine.nvim",
    opts = function() return require("plugins.config.lualine") end,
    config = function(_, opts) require("lualine").setup(opts) end,
  },
}
