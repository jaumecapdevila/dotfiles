local g = vim.g
local o = vim.o
local opt = vim.opt

g.mapleader = " "
g.maplocalleader = " "
-- g.dotfiles_path = vim.fn.expand("~/.dotfiles")

-------------------------------------- options ------------------------------------------
opt.clipboard = "unnamedplus" -- sync with system clipboard
opt.cursorline = false -- enable or disable line highlighting

-- Theming
o.background = "dark"
g.transparent = true
g.material_style = "palenight"

-- Indenting
opt.expandtab = true -- use spaces instead of tabs
opt.shiftwidth = 2
opt.smartindent = true
opt.tabstop = 2
opt.softtabstop = 2

opt.fillchars = { vert = " ", eob = " " }
opt.ignorecase = true
opt.smartcase = true
opt.mouse = "a"

-- Scroll
opt.scrolloff = 4 -- Lines of context
opt.sidescrolloff = 4 -- Columns of context

-- Numbers
opt.number = true
opt.numberwidth = 2
opt.ruler = false
opt.relativenumber = true

-- Message area
opt.showmode = false
opt.showcmd = false
-- opt.cmdheight = 0

-- disable nvim intro
opt.shortmess:append({ W = true, I = true, c = true, C = true })

opt.signcolumn = "yes"
opt.splitbelow = true
opt.splitright = true
opt.termguicolors = true
opt.timeoutlen = 400
opt.undofile = true

-- disable statusline
opt.laststatus = 0

-- interval for writing swap file to disk, also used by gitsigns
opt.updatetime = 250
opt.swapfile = false

-- go to previous/next line with h,l,left arrow and right arrow
-- when cursor reaches end/beginning of line
opt.whichwrap:append("<>[]hl")

-- disable some default providers
for _, provider in ipairs({ "node", "perl", "python3", "ruby" }) do
  vim.g["loaded_" .. provider .. "_provider"] = 0
end

-- add binaries installed by mason.nvim to path
local is_windows = vim.loop.os_uname().sysname == "Windows_NT"

vim.env.PATH = vim.env.PATH
  .. (is_windows and ";" or ":")
  .. vim.fn.stdpath("data")
  .. "/mason/bin"
