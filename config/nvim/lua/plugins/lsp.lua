return {
  {
    "mason-org/mason.nvim",
    dependencies = {
      "mason-org/mason-lspconfig.nvim",
      "WhoIsSethDaniel/mason-tool-installer.nvim",
    },
    opts = require("configs.mason"),
    config = function(_, opts)
      -- import mason
      local mason = require("mason")

      -- import mason-lspconfig and mason-tool-installer
      local mason_lspconfig = require("mason-lspconfig")
      local mason_tool_installer = require("mason-tool-installer")

      -- enable mason and configure icons
      mason.setup(opts)

      mason_lspconfig.setup({
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
      -- -- TypeScript LSP configuration

      vim.api.nvim_create_autocmd("LspAttach", {
        group = vim.api.nvim_create_augroup("UserLspConfig", {}),
        callback = function(event)
          local map = function(keys, func, desc, mode)
            mode = mode or "n"
            vim.keymap.set(
              mode,
              keys,
              func,
              { buffer = event.buf, desc = "LSP: " .. desc }
            )
          end

          -- Execute a code action, usually your cursor needs to be on top of an error
          -- or a suggestion from your LSP for this to activate.
          map(
            "gra",
            vim.lsp.buf.code_action,
            "[G]oto Code [A]ction",
            { "n", "x" }
          )

          -- Find references for the word under your cursor.
          map(
            "grr",
            require("telescope.builtin").lsp_references,
            "[G]oto [R]eferences"
          )

          -- Jump to the implementation of the word under your cursor.
          --  Useful when your language has ways of declaring types without an actual implementation.
          map(
            "gri",
            require("telescope.builtin").lsp_implementations,
            "[G]oto [I]mplementation"
          )

          -- Jump to the definition of the word under your cursor.
          --  This is where a variable was first declared, or where a function is defined, etc.
          --  To jump back, press <C-t>.
          map(
            "grd",
            require("telescope.builtin").lsp_definitions,
            "[G]oto [D]efinition"
          )

          -- WARN: This is not Goto Definition, this is Goto Declaration.
          --  For example, in C this would take you to the header.
          map("grD", vim.lsp.buf.declaration, "[G]oto [D]eclaration")

          -- Fuzzy find all the symbols in your current document.
          --  Symbols are things like variables, functions, types, etc.
          map(
            "gO",
            require("telescope.builtin").lsp_document_symbols,
            "Open Document Symbols"
          )

          -- Fuzzy find all the symbols in your current workspace.
          --  Similar to document symbols, except searches over your entire project.
          map(
            "gW",
            require("telescope.builtin").lsp_dynamic_workspace_symbols,
            "Open Workspace Symbols"
          )

          -- Jump to the type of the word under your cursor.
          --  Useful when you're not sure what type a variable is and you want to see
          --  the definition of its *type*, not where it was *defined*.
          map(
            "grt",
            require("telescope.builtin").lsp_type_definitions,
            "[G]oto [T]ype Definition"
          )

          -- Smart rename using LSP
          map(
            "rn",
            vim.lsp.buf.rename,
            "Smart Rename"
          )
        end,
      })

      vim.diagnostic.config({
        severity_sort = true,
        signs = false, -- Disable signs in the sign column
        virtual_text = true,
      })

      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      vim.lsp.config("*", {
        capabilities = capabilities,
      })

      vim.lsp.config("lua_ls", {
        settings = {
          Lua = {
            -- make the language server recognize "vim" global
            diagnostics = {
              globals = { "vim" },
            },
            completion = {
              callSnippet = "Replace",
            },
          },
        },
      })

      vim.lsp.config("tl_ls", {
        filetypes = {
          "javascript",
          "javascriptreact",
          "javascript.jsx",
          "typescript",
          "typescriptreact",
          "typescript.tsx",
        },
      })
    end,
  },

  {
    "hedyhli/outline.nvim",
    cmd = { "Outline", "OutlineOpen" },
    opts = require("configs.outline"),
    config = function(_, opts) require("outline").setup(opts) end,
    keys = {
      { "<leader>o", "<cmd>Outline<CR>", desc = "Toggle outline" },
    },
  },
}
