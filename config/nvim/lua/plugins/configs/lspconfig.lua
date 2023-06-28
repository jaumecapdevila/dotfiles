local M = {}
local utils = require("core.utils")
local mappings = require("core.mappings")

-- export on_attach & capabilities for custom lspconfigs

M.on_attach = function(client, bufnr)
  client.server_capabilities.documentFormattingProvider = false
  client.server_capabilities.documentRangeFormattingProvider = false
  client.server_capabilities.semanticTokensProvider = nil
  utils.map(mappings.lspconfig, { buffer = bufnr })
  utils.map(mappings.lspsaga, { buffer = bufnr })
  if client.name == "tsserver" then
    utils.map(mappings.typescript, { buffer = bufnr })
  end
end

M.capabilities = vim.lsp.protocol.make_client_capabilities()

M.capabilities.textDocument.completion.completionItem = {
  documentationFormat = { "markdown", "plaintext" },
  snippetSupport = true,
  preselectSupport = true,
  insertReplaceSupport = true,
  labelDetailsSupport = true,
  deprecatedSupport = true,
  commitCharactersSupport = true,
  tagSupport = { valueSet = { 1 } },
  resolveSupport = {
    properties = {
      "documentation",
      "detail",
      "additionalTextEdits",
    },
  },
}

local lspconfig = require("lspconfig")
local lspconfig_util = require("lspconfig/util")

local simple_servers = {
  "html",
  "cssls",
  "clangd",
  "jsonls",
  "bashls",
  "phpactor"
}

for _, lsp in ipairs(simple_servers) do
  lspconfig[lsp].setup({
    on_attach = M.on_attach,
    capabilities = M.capabilities,
  })
end

lspconfig.tsserver.setup({
  on_attach = M.on_attach,
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
  capabilities = M.capabilities,
})

-- configure emmet language server
lspconfig["emmet_ls"].setup({
  capabilities = M.capabilities,
  on_attach = M.on_attach,
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
  capabilities = M.capabilities,
  on_attach = M.on_attach,
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
  on_attach = M.on_attach,
  capabilities = M.capabilities,
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

-- this is for diagnositcs signs on the line number column
-- use this to beautify the plain E W signs to more fun ones
-- !important nerdfonts needs to be setup for this to work in your terminal
local signs = {
  Error = " ",
  Warn = " ",
  Info = " ",
  Hint = " ",
}

for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

return M
