return {
  {
    "mfussenegger/nvim-lint",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      local lint = require("lint")
  
      lint.linters_by_ft = {
        javascript = { "eslint_d" },
        typescript = { "eslint_d" },
        javascriptreact = { "eslint_d" },
        typescriptreact = { "eslint_d" },
        svelte = { "eslint_d" },
        python = { "pylint" },
      }
  
      local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })
  
      vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
        group = lint_augroup,
        callback = function() lint.try_lint() end,
      })
  
      vim.keymap.set(
        "n",
        "<leader>lt",
        function() lint.try_lint() end,
        { desc = "Trigger linting for current file" }
      )
    end,
  },

  {
    "stevearc/conform.nvim",
    event = { "BufReadPre", "BufNewFile" },
    cmd = { "ConformInfo" },
    opts = require("plugins.opts.conform"),
    config = function(_, opts)
      local conform = require("conform")
  
      conform.setup(opts)
  
      vim.keymap.set(
        { "n", "v" },
        "<leader>rc",
        function()
          conform.format({
            async = true,
          })
        end,
        { desc = "Format file or selection" }
      )
    end,
  }
}
