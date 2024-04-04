local u = require("utils")
local k = require("config.keymaps")

return {
  -- file icons
  {
    "nvim-tree/nvim-web-devicons",
    config = function(_, opts) require("nvim-web-devicons").setup(opts) end,
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
}
