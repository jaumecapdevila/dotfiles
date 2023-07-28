return {
  -- colorize
  {
    "NvChad/nvim-colorizer.lua",
    event = { "BufRead", "BufWinEnter", "BufNewFile" },
    opts = function() return require("plugins.configs.colorizer") end,
    config = function(_, opts)
      require("colorizer").setup(opts)
      -- execute colorizer as soon as possible
      vim.defer_fn(function() require("colorizer").attach_to_buffer(0) end, 0)
    end,
  },

  -- Git UI
  {
    "kdheepak/lazygit.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    init = function()
      vim.g.lazygit_floating_window_use_plenary = 0
    end,
    keys = {
      {
        "<leader>lg",
        function() require("lazygit").lazygit() end,
        desc = "LazyGit",
      },
    },
  },

  -- Custom formatters
  {
    "mhartington/formatter.nvim",
    init = function()
      require("core.utils").map("formatter")
    end,
    opts = function() return require("plugins.configs.format") end,
    config = function(_, opts)
      require("formatter").setup(opts)
    end,
  }
}
