local cmp = require("cmp")
local lspkind = require("lspkind")

local options = {
  completion = {
    completeopt = "menu,menuone,preview,noselect",
  },

  window = {
    completion = cmp.config.window.bordered(),
    documentation = cmp.config.disable,
  },

  snippet = {
    expand = function(args) require("luasnip").lsp_expand(args.body) end,
  },

  mapping = {
    ["<C-k>"] = cmp.mapping.select_prev_item(), -- previous suggestion
    ["<C-j>"] = cmp.mapping.select_next_item(), -- next suggestion
    ["<C-b>"] = cmp.mapping.scroll_docs(-4),
    ["<C-f>"] = cmp.mapping.scroll_docs(4),
    ["<C-Space>"] = cmp.mapping.complete(), -- show completion suggestions
    ["<C-e>"] = cmp.mapping.abort(), -- close completion window
    ["<CR>"] = cmp.mapping.confirm({ select = false }),
  },

  sources = {
    { name = "nvim_lsp" },
    { name = "nvim_lua" }, -- neovim Lua API
    { name = "luasnip" }, -- snippets
    { name = "buffer" }, -- text within current buffer
    { name = "path" }, -- file system paths
  },

  -- configure lspkind for vs-code like pictograms in completion menu
  formatting = {
    format = lspkind.cmp_format({
      maxwidth = 50,
      ellipsis_char = "...",
    }),
  },
}

return options
