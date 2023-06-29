return {
  -- golang
  {
    "olexsmir/gopher.nvim",
    ft = "go",
    opts = function() return require("plugins.configs.others").gopher end,
    config = function(_, opts)
      require("gopher").setup(opts)
      require("core.utils").map("gopher")
    end,
    build = function() vim.cmd([[silent! GoInstallDeps]]) end,
  },
}
