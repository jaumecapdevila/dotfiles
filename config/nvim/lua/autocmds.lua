-----------------------------------------------------------
-- Autocommand functions
-----------------------------------------------------------

-- Define autocommands with Lua APIs
-- See: h:api-autocmd, h:augroup
local augroup = vim.api.nvim_create_augroup -- Create/get autocommand group
local autocmd = vim.api.nvim_create_autocmd -- Create autocommand
local user_command = vim.api.nvim_create_user_command -- Create user command

-----------------------------------------------------------
-- General settings
-----------------------------------------------------------

-- Check if we need to reload the file when it changed
autocmd({ "FocusGained", "TermClose", "TermLeave" }, {
  group = augroup("checktime", { clear = true }),
  callback = function()
    if vim.o.buftype ~= "nofile" then vim.cmd("checktime") end
  end,
})

-- Highlight on yank
autocmd("TextYankPost", {
  group = augroup("highlight_yank", { clear = true }),
  callback = function() (vim.hl or vim.highlight).on_yank() end,
})

-- Auto create dir when saving a file, in case some intermediate directory does not exist
autocmd({ "BufWritePre" }, {
  group = augroup("auto_create_dir", { clear = true }),
  callback = function(event)
    if event.match:match("^%w%w+:[\\/][\\/]") then return end
    local file = vim.uv.fs_realpath(event.match) or event.match
    vim.fn.mkdir(vim.fn.fnamemodify(file, ":p:h"), "p")
  end,
})

-- Remove whitespace on save
autocmd("BufWritePre", {
  pattern = "",
  command = ":%s/\\s\\+$//e",
})

-- Do not auto comment new lines
autocmd("BufEnter", {
  pattern = "",
  command = "set fo-=c fo-=r fo-=o",
})

-- Restore cursor on VimLeave or VimSuspend
-- block, hor{N}, ver{N}, blinkon{N}, blinkoff{N}                                                    │
-- check https://neovim.io/doc/user/options.html#'guicursor'
-- autocmd({ "VimLeave", "VimSuspend" }, {
--   group = augroup("restore_cursor", { clear = true }),
--   command = "set guicursor=a:ver50-blinkon100",
-- })

-----------------------------------------------------------
-- Filetype settings
-----------------------------------------------------------

-- Associate .gql, .graphql and .graphlql with graphql
autocmd({ "BufNewFile", "BufRead" }, {
  group = augroup("setFiletype", { clear = true }),
  pattern = { "*.gql", "*.graphql", "*.graphlql" },
  command = "setfiletype graphql",
})

-- Disable line length marker
autocmd("Filetype", {
  group = augroup("setLineLength", { clear = true }),
  pattern = { "text", "markdown", "html", "xhtml", "javascript", "typescript" },
  command = "setlocal cc=0",
})

-- Set indentation to 2 spaces
autocmd("Filetype", {
  group = augroup("setIndent", { clear = true }),
  pattern = {
    "xml",
    "html",
    "xhtml",
    "css",
    "scss",
    "yaml",
    "lua",
  },
  command = "setlocal shiftwidth=2 tabstop=2",
})

-----------------------------------------------------------
-- Diagnostics
-----------------------------------------------------------

autocmd("CursorHold", {
  group = augroup("show_line_diagnostics", { clear = true }),
  callback = function()
    local opts = {
      close_events = { "BufLeave", "CursorMoved", "InsertEnter", "FocusLost" },
      focusable = false,
      scope = "cursor",
    }
    vim.diagnostic.open_float(nil, opts)
  end,
})

autocmd("InsertEnter", {
  group = augroup("disable_diagnostics_insert_mode", { clear = true }),
  callback = function() vim.diagnostic.enable(false) end,
})

autocmd("InsertLeave", {
  group = augroup("enable_diagnostics_insert_mode", { clear = true }),
  callback = function() vim.diagnostic.enable(true) end,
})

-----------------------------------------------------------
-- Terminal settings
-----------------------------------------------------------

-- Creates a custom command :Term when entering the command-line mode :
-- window  horizontal  down --> :botright   split
autocmd("CmdlineEnter", {
  command = "command! Term :botright split term://$SHELL",
})

-- Enter insert mode when switching to terminal
autocmd("TermOpen", {
  command = "setlocal listchars= signcolumn=no nonumber norelativenumber nocursorline",
})

autocmd("TermOpen", {
  pattern = "",
  command = "startinsert",
})

-- Close terminal buffer on process exit
autocmd("BufLeave", {
  pattern = "term://*",
  command = "stopinsert",
})

-----------------------------------------------------------
-- Editor settings
-----------------------------------------------------------

user_command("FormatDisable", function(args)
  if args.bang then
    -- FormatDisable! will disable formatting just for this buffer
    vim.b.disable_autoformat = true
  else
    vim.g.disable_autoformat = true
  end
end, {
  desc = "Disable autoformat-on-save",
  bang = true,
})

user_command("FormatEnable", function()
  vim.b.disable_autoformat = false
  vim.g.disable_autoformat = false
end, {
  desc = "Re-enable autoformat-on-save",
})
