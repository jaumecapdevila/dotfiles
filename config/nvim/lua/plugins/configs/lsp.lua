local utils = require("core.utils")

local on_attach = function(client, bufnr)
  client.server_capabilities.documentFormattingProvider = false
  client.server_capabilities.documentRangeFormattingProvider = false
  client.server_capabilities.semanticTokensProvider = nil
  utils.map("lspconfig", { buffer = bufnr })
end

local lspconfig = require("lspconfig")
local cmp_nvim_lsp = require("cmp_nvim_lsp")
local lspconfig_util = require("lspconfig/util")

-- used to enable autocompletion (assign to every lsp server config)
local capabilities = cmp_nvim_lsp.default_capabilities()

-- this is for diagnositcs signs on the line number column
local signs = {
  Error = "",
  Warn = "",
  Info = "",
  Hint = "",
}

for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

local simple_servers = {
  "astro",
  "tailwindcss",
  "html",
  "cssls",
  "clangd",
  "jsonls",
  "bashls",
  "pyright",
}

for _, lsp in ipairs(simple_servers) do
  lspconfig[lsp].setup({
    on_attach = on_attach,
    capabilities = capabilities,
  })
end

lspconfig.tsserver.setup({
  on_attach = on_attach,
  -- filetypes = { "typescript", "typescriptreact", "typescript.tsx" },
  filetypes = {
    "javascript",
    "javascriptreact",
    "javascript.jsx",
    "typescript",
    "typescriptreact",
    "typescript.tsx",
  },
  cmd = { "typescript-language-server", "--stdio" },
  capabilities = capabilities,
})

-- configure emmet language server
lspconfig["emmet_ls"].setup({
  capabilities = capabilities,
  on_attach = on_attach,
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
lspconfig["lua_ls"].setup({
  capabilities = capabilities,
  on_attach = on_attach,
  settings = {
    Lua = {
      -- make the language server recognize "vim" global
      diagnostics = {
        globals = { "vim", "hs" },
      },
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
lspconfig.gopls.setup({
  on_attach = on_attach,
  capabilities = capabilities,
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
