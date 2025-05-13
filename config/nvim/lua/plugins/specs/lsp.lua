return {
  {
    "mason-org/mason.nvim",
    cmd = { "Mason", "MasonInstall", "MasonUpdate" },
    dependencies = {
      "mason-org/mason-lspconfig.nvim",
      "WhoIsSethDaniel/mason-tool-installer.nvim",
    },
    opts = require("plugins.opts.mason"),
    config = function(_, opts)
      -- import mason
      local mason = require("mason")

      -- import mason-lspconfig and mason-tool-installer
      local mason_lspconfig = require("mason-lspconfig")
      local mason_tool_installer = require("mason-tool-installer")

      -- enable mason and configure icons
      mason.setup(opts)

      mason_lspconfig.setup({
        automatic_enable = true,
        -- list of servers for mason to install
        ensure_installed = {
          "ts_ls",
          "html",
          "cssls",
          "tailwindcss",
          "svelte",
          "lua_ls",
          "graphql",
          "emmet_ls",
          "pyright",
          "rust_analyzer",
        },
      })

      mason_tool_installer.setup({
        ensure_installed = {
          "prettier", -- prettier formatter
          "stylua", -- lua formatter
          "isort", -- python formatter
          "black", -- python formatter
          "pylint",
          "eslint_d",
        },
      })
    end,
  },

  {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
    },
    config = function()
      local lspconfig = require("lspconfig")
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      -- Lua LSP configuration
      lspconfig.lua_ls.setup({
        capabilities = capabilities,
        settings = {
          Lua = {
            diagnostics = {
              globals = { "vim" },
            },
          },
        },
      })

      -- TypeScript LSP configuration
      lspconfig.ts_ls.setup({
        capabilities = capabilities,
        filetypes = {
          "javascript",
          "javascriptreact",
          "javascript.jsx",
          "typescript",
          "typescriptreact",
          "typescript.tsx",
        },
      })

      -- Disable diagnostic signs
      vim.diagnostic.config({
        signs = false, -- Disable signs in the sign column
        virtual_text = true,
      })

      vim.api.nvim_create_autocmd("LspAttach", {
        group = vim.api.nvim_create_augroup("UserLspConfig", {}),
        callback = function(ev)
          local opts = { buffer = ev.buf }

          vim.keymap.set(
            "n",
            "gR",
            "<cmd>Telescope lsp_references<CR>",
            opts,
            { desc = "Show LSP references" }
          )
          vim.keymap.set(
            "n",
            "gD",
            vim.lsp.buf.declaration,
            opts,
            { desc = "Go to declaration" }
          )
          vim.keymap.set(
            "n",
            "gd",
            "<cmd>Telescope lsp_definitions<CR>",
            opts,
            { desc = "Show LSP definitions" }
          )
          vim.keymap.set(
            "n",
            "gi",
            "<cmd>Telescope lsp_implementations<CR>",
            opts,
            { desc = "Show LSP implementations" }
          )
          vim.keymap.set(
            "n",
            "gt",
            "<cmd>Telescope lsp_type_definitions<CR>",
            opts,
            { desc = "Show LSP type definitions" }
          )
          vim.keymap.set(
            { "n", "v" },
            "<leader>ca",
            vim.lsp.buf.code_action,
            opts,
            { desc = "See available code actions" }
          )
          vim.keymap.set(
            "n",
            "<leader>rn",
            vim.lsp.buf.rename,
            opts,
            { desc = "Smart rename" }
          )
          vim.keymap.set(
            "n",
            "<leader>D",
            "<cmd>Telescope diagnostics bufnr=0<CR>",
            opts,
            { desc = "Show buffer diagnostics" }
          )
          vim.keymap.set(
            "n",
            "<leader>d",
            vim.diagnostic.open_float,
            opts,
            { desc = "Show line diagnostics" }
          )
          vim.keymap.set(
            "n",
            "[d",
            vim.diagnostic.goto_prev,
            opts,
            { desc = "Go to previous diagnostic" }
          )
          vim.keymap.set(
            "n",
            "]d",
            vim.diagnostic.goto_next,
            opts,
            { desc = "Go to next diagnostic" }
          )
          vim.keymap.set(
            "n",
            "K",
            vim.lsp.buf.hover,
            opts,
            { desc = "Show documentation" }
          )
          vim.keymap.set(
            "n",
            "<leader>rs",
            ":LspRestart<CR>",
            opts,
            { desc = "Restart Server" }
          )
        end,
      })
    end,
  },
}
