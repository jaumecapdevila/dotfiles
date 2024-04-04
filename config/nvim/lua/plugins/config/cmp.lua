local cmp = require("cmp")
local lspkind = require("lspkind")

local options = {
  completion = {
    completeopt = "menu,menuone,preview,noselect", -- https://neovim.io/doc/user/options.html#'completeopt'
  },

  snippet = {
    expand = function(args) require("luasnip").lsp_expand(args.body) end,
  },

  mapping = {
    ["<C-n>"] = cmp.mapping.select_next_item(), -- next suggestion
    ["<C-p>"] = cmp.mapping.select_prev_item(), -- previous suggestion
    ["<C-Space>"] = cmp.mapping.complete(), -- show completion suggestions
    ["<C-e>"] = cmp.mapping.abort(), -- close completion window
    ["<CR>"] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    ["<S-CR>"] = cmp.mapping.confirm({
      behavior = cmp.ConfirmBehavior.Replace,
      select = true,
    }),
    ["<C-CR>"] = function(fallback)
      cmp.abort()
      fallback()
    end,
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
      mode = "text_symbol",
    }),
  },
}

return options
