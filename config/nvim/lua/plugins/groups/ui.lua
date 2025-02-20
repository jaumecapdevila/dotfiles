return {
  -- File icons
  {
    "nvim-tree/nvim-web-devicons",
    config = function(_, opts) require("nvim-web-devicons").setup(opts) end,
  },

  -- Custom start screen
  {
    "goolord/alpha-nvim",
    event = "VimEnter",
    opts = function() return require("plugins.opts.dashboard") end,
    config = function(_, dashboard)
      require("alpha").setup(dashboard.opts)
      -- Disable folding on alpha buffer
      vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
    end,
  },

  -- Transparent ui
  {
    "xiyaowong/transparent.nvim",
    lazy = false,
    cond = vim.g.transparent and not vim.g.vscode,
    opts = require("plugins.opts.transparent"),
    config = function(_, opts) require("transparent").setup(opts) end,
  },

  -- Indent guides
  {
    "lukas-reineke/indent-blankline.nvim",
    event = { "BufReadPre", "BufNewFile" },
    main = "ibl",
    opts = function() return require("plugins.opts.indent") end,
    config = function(_, opts) require("ibl").setup(opts) end,
  },
}
