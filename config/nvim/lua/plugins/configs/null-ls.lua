local null_ls = require("null-ls")

local format = null_ls.builtins.formatting
local lint = null_ls.builtins.diagnostics

local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

local lsp_formatting = function(bufnr)
  vim.lsp.buf.format({
    filter = function(client) return client.name == "null-ls" end,
    bufnr = bufnr,
  })
end

local sources = {
  -- webdev stuff
  -- format.deno_fmt,
  format.prettier,
  -- format.prettier.with({ filetypes = { "html", "markdown", "css" } }),

  -- Lua
  format.stylua,

  -- PHP
  format.phpcsfixer,

  -- Eslint
  -- lint.eslint_d,
  lint.eslint,

  -- Shell
  format.shfmt,
  lint.shellcheck.with({ diagnostics_format = "#{m} [#{c}]" }),

  -- cpp
  format.clang_format,

  -- Golang
  null_ls.builtins.formatting.gofumpt,
  null_ls.builtins.formatting.goimports_reviser,
  null_ls.builtins.formatting.golines,
}

null_ls.setup({
  debug = true,
  sources = sources,
  on_attach = function(client, bufnr)
    if client.supports_method("textDocument/formatting") then
      vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
      vim.api.nvim_create_autocmd("BufWritePre", {
        group = augroup,
        buffer = bufnr,
        callback = function() lsp_formatting(bufnr) end,
      })
    end
  end,
})

vim.api.nvim_create_user_command(
  "DisableLspFormatting",
  function() vim.api.nvim_clear_autocmds({ group = augroup, buffer = 0 }) end,
  { nargs = 0 }
)
