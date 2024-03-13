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
    opts = function() return require("plugins.config.mason") end,
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
      "hrsh7th/cmp-nvim-lsp",
      {
        "dnlhc/glance.nvim",
        cmd = "Glance",
        ---@class GlanceOpts
        opts = function() return require("plugins.config.glance") end,
        config = function(_, opts) require("glance").setup(opts) end,
      },
    },
    config = function() require("plugins.config.lsp") end,
  },
}
