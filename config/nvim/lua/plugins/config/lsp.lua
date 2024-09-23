local u = require("utils")
local k = require("config.keymaps")
local lspconfig = require("lspconfig")
local cmp_nvim_lsp = require("cmp_nvim_lsp")
local lspconfig_util = require("lspconfig/util")

vim.api.nvim_create_autocmd("LspAttach", {
  group = vim.api.nvim_create_augroup("UserLspConfig", {}),
  callback = function(ev)
    u.map(k.lspconfig, { buffer = ev.buff })
    -- disable semantic tokens for all lsp servers
    local client = vim.lsp.get_client_by_id(ev.data.client_id)
    client.server_capabilities.semanticTokensProvider = nil
  end,
})

-- lsp signs dipslayed in the gutter
local signs = { Error = "", Warn = "", Info = "", Hint = "" }

for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

-- used to register lsp servers with some extra options
local setup_server = function(server, extra_opts)
  -- used to enable autocompletion (assign to every lsp server config)
  local capabilities = cmp_nvim_lsp.default_capabilities()
  local base_opts = { capabilities = capabilities }
  local server_opts = vim.tbl_extend("force", base_opts, extra_opts or {})
  lspconfig[server].setup(server_opts)
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

setup_server("ts_ls", {
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
