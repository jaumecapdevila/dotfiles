return {
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
