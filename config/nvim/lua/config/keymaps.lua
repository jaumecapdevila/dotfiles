local g = vim.g
local keymap = vim.keymap

-- Change leader key to space
g.mapleader = " "
g.maplocalleader = " "

-- Go to  beginning and end
keymap.set("i", "<C-b>", "<ESC>^i", { desc = "Beginning of line" })
keymap.set("i", "<C-e>", "<End>", { desc = "End of line" })

-- Navigate within insert mode
keymap.set("i", "<C-h>", "<Left>", { desc = "Move left" })
keymap.set("i", "<C-l>", "<Right>", { desc = "Move right" })
keymap.set("i", "<C-j>", "<Down>", { desc = "Move down" })
keymap.set("i", "<C-k>", "<Up>", { desc = "Move up" })

keymap.set("n", "<Esc>", "<cmd>noh<cr><esc>", { desc = "Clear highlights" })

-- Switch between windows
keymap.set("n", "<C-h>", "<C-w>h", { desc = "Window left" })
keymap.set("n", "<C-l>", "<C-w>l", { desc = "Window right" })
keymap.set("n", "<C-j>", "<C-w>j", { desc = "Window down" })
keymap.set("n", "<C-k>", "<C-w>k", { desc = "Window up" })

-- Window management
keymap.set("n", "<leader>ww", "<C-W>p", { desc = "Other window" })
keymap.set("n", "<leader>wd", "<C-W>c", { desc = "Delete window" })
keymap.set("n", "<leader>w-", "<C-W>s", { desc = "Split window below" })
keymap.set("n", "<leader>w|", "<C-W>v", { desc = "Split window right" })
keymap.set("n", "<leader>-", "<C-W>s", { desc = "Split window below" })
keymap.set("n", "<leader>|", "<C-W>v", { desc = "Split window right" })
keymap.set("n", "<C-Up>", "<cmd>resize +2<cr>", { desc = "Increase window height" })
keymap.set("n", "<C-Down>", "<cmd>resize -2<cr>", { desc = "Decrease window height" })
keymap.set("n", "<C-Left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease window width" })
keymap.set("n", "<C-Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase window width" })

-- Buffer managenent
keymap.set("n", "<leader>bn", "<cmd>bn<cr>", { desc = "Next buffer" })
keymap.set("n", "<leader>bp", "<cmd>bp<cr>", { desc = "Previous buffer" })
keymap.set("n", "<leader>bd", "<cmd>bd<cr>", { desc = "Delete buffer" })
keymap.set("n", "<leader>bo", "<cmd>%bd|e#<cr>", { desc = "Close other buffers" })

-- Save
keymap.set("n", "<C-s>", "<cmd>w<CR>", { desc = "Save file" })

-- Copy all
keymap.set("n", "<C-c>", "<cmd> %y+ <CR>", { desc = "Copy whole file" })

-- Line numbers
keymap.set("n", "<leader>n", "<cmd>set nu!<CR>", { desc = "Toggle line numbers" })
keymap.set("n", "<leader>rn", "<cmd>set rnu!<CR>", { desc = "Toggle relative line numbers" })

-- Utils
keymap.set("n", "<leader>wf", "<cmd>enew<cr>", { desc = "New file" })
keymap.set("n", "<leader>qq", "<cmd>qa<cr>", { desc = "Quit all" })
keymap.set("n", "<leader>cl", "<cmd>LspInfo<cr>", { desc = "Lsp info" })

-- Terminal
keymap.set("n", "<C-t>", ":Term<CR>", { desc = "Open terminal" })

-- Terminal navigation
keymap.set("t", "<Esc>", "<c-\\><c-n>", { desc = "Enter Normal Mode" })
keymap.set("t", "<C-h>", "<cmd>wincmd h<cr>", { desc = "Go to left window" })
keymap.set("t", "<C-j>", "<cmd>wincmd j<cr>", { desc = "Go to lower window" })
keymap.set("t", "<C-k>", "<cmd>wincmd k<cr>", { desc = "Go to upper window" })
keymap.set("t", "<C-l>", "<cmd>wincmd l<cr>", { desc = "Go to right window" })
keymap.set("t", "<C-/>", "<cmd>close<cr>", { desc = "Hide Terminal" })
keymap.set("t", "<c-_>", "<cmd>close<cr>", { desc = "which_key_ignore" })
