local u = require("utils")
local k = require("config.keymaps")
local lspconfig = require("lspconfig")
local cmp_nvim_lsp = require("cmp_nvim_lsp")
local lspconfig_util = require("lspconfig/util")

-- used to attach keymaps to the lsp servers
local on_attach = function(_, bufnr) u.map(k.lspconfig, { buffer = bufnr }) end

-- used to enable autocompletion (assign to every lsp server config)
local capabilities = cmp_nvim_lsp.default_capabilities()

-- used to register lsp servers with some extra options
local setup_server = function(server, extra_opts)
  local base_opts = { capabilities = capabilities, on_attach = on_attach }
  local server_opts = vim.tbl_extend("force", base_opts, extra_opts or {})
  lspconfig[server].setup(server_opts)
end

-- lsp signs dipslayed in the gutter
local signs = { Error = "", Warn = "", Info = "", Hint = "" }

for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

-- register lsp servers
setup_server("astro")
setup_server("bashls")
setup_server("clangd")
setup_server("cssls")
setup_server("html")
setup_server("jsonls")
setup_server("pyright")
setup_server("tailwindcss")

-- configure tsserver
setup_server("tsserver", {
  filetypes = {
    "javascript",
    "javascriptreact",
    "javascript.jsx",
    "typescript",
    "typescriptreact",
    "typescript.tsx",
  },
  cmd = { "typescript-language-server", "--stdio" },
})

-- configure emmet language server
setup_server("emmet_ls", {
  filetypes = {
    "html",
    "typescriptreact",
    "javascriptreact",
    "css",
    "sass",
    "scss",
    "less",
    "svelte",
  },
})

-- configure lua server (with special settings)
setup_server("lua_ls", {
  settings = {
    Lua = {
      -- make the language server recognize "vim" global
      diagnostics = { globals = { "vim", "hs" } },
      workspace = {
        -- make language server aware of runtime files
        library = {
          [vim.fn.expand("$VIMRUNTIME/lua")] = true,
          [vim.fn.stdpath("config") .. "/lua"] = true,
        },
      },
    },
  },
})

-- configure gopls server
setup_server("gopls", {
  cmd = { "gopls" },
  filetypes = { "go", "gomod", "gowork", "gotmpl" },
  root_dir = lspconfig_util.root_pattern("go.work", "go.mod", ".git"),
  settings = {
    gopls = {
      completeUnimported = true,
      usePlaceholders = true,
      analyses = {
        unusedparams = true,
      },
    },
  },
})
