return {
  -- linting
  {
    "mfussenegger/nvim-lint",
    lazy = true,
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      local lint = require("lint")

      lint.linters_by_ft = require("plugins.config.linters")

      local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })

      vim.api.nvim_create_autocmd(
        { "BufEnter", "BufWritePost", "InsertLeave" },
        {
          group = lint_augroup,
          callback = function() lint.try_lint() end,
        }
      )

      vim.keymap.set(
        "n",
        "<leader>lt",
        function() lint.try_lint() end,
        { desc = "Trigger linting for current file" }
      )
    end,
  },

  -- formatting
  {
    "stevearc/conform.nvim",
    lazy = true,
    event = { "BufReadPre", "BufNewFile" }, -- to disable, comment this out
    opts = function() return require("plugins.config.formatting") end,
    config = function(_, opts)
      local conform = require("conform")

      conform.setup(opts)

      vim.keymap.set(
        { "n", "v" },
        "<leader>rc",
        function()
          conform.format({
            lsp_fallback = true,
            timeout_ms = 1000,
          })
        end,
        { desc = "Format file or selection" }
      )
    end,
  },
}
