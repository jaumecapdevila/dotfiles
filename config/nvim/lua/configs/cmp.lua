local cmp = require("cmp")
local lspkind = require("lspkind")
local luasnip = require("luasnip")

return {
  completion = {
    completeopt = "menu,menuone,preview,noselect",
  },

  snippet = { -- configure how nvim-cmp interacts with snippet engine
    expand = function(args) luasnip.lsp_expand(args.body) end,
  },

  mapping = cmp.mapping.preset.insert({
    ["<C-k>"] = cmp.mapping.select_prev_item(), -- previous suggestion
    ["<C-j>"] = cmp.mapping.select_next_item(), -- next suggestion
    ["<C-b>"] = cmp.mapping.scroll_docs(-4),
    ["<C-f>"] = cmp.mapping.scroll_docs(4),
    ["<C-Space>"] = cmp.mapping.complete(), -- show completion suggestions
    ["<C-e>"] = cmp.mapping.abort(), -- close completion window
    ["<CR>"] = cmp.mapping.confirm({ select = false }),
  }),

  -- sources for autocompletion
  sources = {
    { name = "nvim_lsp" },
    { name = "nvim_lua" }, -- neovim Lua API
    { name = "luasnip" }, -- snippets
    { name = "buffer" }, -- text within current buffer
    { name = "path" }, -- file system paths
    { name = 'render-markdown' } -- markdown rendering
  },

  -- configure lspkind for vs-code like pictograms in completion menu
  formatting = {
    format = lspkind.cmp_format({
      mode = "text_symbol",
    }),
  },
}
