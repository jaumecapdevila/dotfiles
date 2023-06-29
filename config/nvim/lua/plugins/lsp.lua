local utils = require("core.utils")

if utils.isVscode() then
  return {}
end

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
        -- format & linting
        "jose-elias-alvarez/null-ls.nvim",
        config = function() require("plugins.configs.null-ls") end,
      },
    },
    config = function() require("plugins.configs.lspconfig") end,
  },

  {
    "glepnir/lspsaga.nvim",
    dependencies = {
      { "nvim-tree/nvim-web-devicons" },
      { "nvim-treesitter/nvim-treesitter" },
    },
    event = "LspAttach",
    opts = function() return require("plugins.configs.lspsaga") end,
    config = function(_, opts) require("lspsaga").setup(opts) end,
  },
}
