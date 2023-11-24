-----------------------------------------------------------
-- Autocommand functions
-----------------------------------------------------------

-- Define autocommands with Lua APIs
-- See: h:api-autocmd, h:augroup
local augroup = vim.api.nvim_create_augroup -- Create/get autocommand group
local autocmd = vim.api.nvim_create_autocmd -- Create autocommand

-- General settings:
--------------------

-- Check if we need to reload the file when it changed
autocmd({ "FocusGained", "TermClose", "TermLeave" }, {
  group = augroup("checktime", { clear = true }),
  command = "checktime",
})

-- Highlight on yank
autocmd("TextYankPost", {
  group = augroup("highlight_yank", { clear = true }),
  callback = function() vim.highlight.on_yank() end,
})

-- Remove whitespace on save
autocmd("BufWritePre", {
  pattern = "",
  command = ":%s/\\s\\+$//e",
})

-- Don't auto commenting new lines
autocmd("BufEnter", {
  pattern = "",
  command = "set fo-=c fo-=r fo-=o",
})

-- Restore cursor when Neovim is closed
-- block, hor{N}, ver{N}, blinkon{N}, blinkoff{N}
-- check https://neovim.io/doc/user/options.html#'guicursor'
autocmd({ "VimLeave", "VimSuspend" }, {
  group = augroup("restore_cursor", { clear = true }),
  command = "set guicursor=a:block-blinkon100",
})

-- Settings for filetypes:
--------------------------

-- Associate .gql, .graphql and .graphlql with graphql
augroup("setFiletype", { clear = true })

autocmd({ "BufNewFile", "BufRead" }, {
  group = "setFiletype",
  pattern = { "*.gql", "*.graphql", "*.graphlql" },
  command = "setfiletype graphql",
})
