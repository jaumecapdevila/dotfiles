return {
  -- lsp stuff
  {
    "williamboman/mason.nvim",
    cmd = {
      "Mason",
      "MasonInstall",
      "MasonInstallAll",
      "MasonUninstall",
      "MasonUninstallAll",
      "MasonLog",
    },
    opts = function() return require("plugins.configs.mason") end,
    config = function(_, opts)
      require("mason").setup(opts)

      -- custom cmd to install all mason binaries listed
      vim.api.nvim_create_user_command(
        "MasonInstallAll",
        function()
          vim.cmd("MasonInstall " .. table.concat(opts.ensure_installed, " "))
        end,
        {}
      )

      vim.g.mason_binaries_list = opts.ensure_installed
    end,
  },

  {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
      {
        "dnlhc/glance.nvim",
        cmd = "Glance",
        ---@class GlanceOpts
        opts = function() return require("plugins.configs.glance") end,
        config = function(_, opts) require("glance").setup(opts) end,
      },
    },
    config = function() require("plugins.configs.lspconfig") end,
  },

  -- VSCode like breadcrums
  {
    "utilyre/barbecue.nvim",
    name = "barbecue",
    dependencies = {
      "SmiteshP/nvim-navic",
      "nvim-tree/nvim-web-devicons",
    },
  },

  {
    "weilbith/nvim-code-action-menu",
    enabled = false,
    cmd = "CodeActionMenu",
    init = function() require("core.utils").map("code_action") end,
  },

  -- VSCode like code actions lightbulb
  {
    "kosayoda/nvim-lightbulb",
    opts = function() return require("plugins.configs.lightbulb") end,
    config = function(_, opts) require("nvim-lightbulb").setup(opts) end,
  },
}
