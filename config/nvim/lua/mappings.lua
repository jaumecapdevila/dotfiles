local keymap = vim.keymap

-- Move to window using the <ctrl> hjkl keys
keymap.set("n", "<C-h>", "<C-w>h", { desc = "Go to Left Window" })
keymap.set("n", "<C-j>", "<C-w>j", { desc = "Go to Lower Window" })
keymap.set("n", "<C-k>", "<C-w>k", { desc = "Go to Upper Window" })
keymap.set("n", "<C-l>", "<C-w>l", { desc = "Go to Right Window" })

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- Window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set(
  "n",
  "<leader>sx",
  "<cmd>close<CR>",
  { desc = "Close current split" }
) -- close current split window

-- Buffer managenent
keymap.set("n", "<leader>bn", "<cmd>bn<cr>", { desc = "Next buffer" })
keymap.set("n", "<leader>bp", "<cmd>bp<cr>", { desc = "Previous buffer" })
keymap.set("n", "<leader>bd", "<cmd>bd<cr>", { desc = "Delete buffer" })

-- Utils
keymap.set("n", "<Esc>", "<cmd>noh<cr><esc>", { desc = "Clear highlights" })
keymap.set("n", "<C-s>", "<cmd>w<CR>", { desc = "Save file" })
keymap.set("n", "<C-c>", "<cmd> %y+ <CR>", { desc = "Copy whole file" })
keymap.set("n", "<leader>wf", "<cmd>enew<cr>", { desc = "New file" })
keymap.set("n", "<leader>qq", "<cmd>qa<cr>", { desc = "Quit all" })
keymap.set("n", "<leader>cl", "<cmd>LspInfo<cr>", { desc = "Lsp info" })

-- Terminal
keymap.set("n", "<leader>t", ":Term<CR>", { desc = "Open terminal" })
keymap.set("t", "<Esc>", "<c-\\><c-n>", { desc = "Enter Normal Mode" })
keymap.set("t", "<C-/>", "<cmd>close<cr>", { desc = "Close Terminal" })

-- Terminal navigation
keymap.set("t", "<C-h>", "<cmd>wincmd h<cr>", { desc = "Go to left window" })
keymap.set("t", "<C-j>", "<cmd>wincmd j<cr>", { desc = "Go to lower window" })
keymap.set("t", "<C-k>", "<cmd>wincmd k<cr>", { desc = "Go to upper window" })
keymap.set("t", "<C-l>", "<cmd>wincmd l<cr>", { desc = "Go to right window" })
