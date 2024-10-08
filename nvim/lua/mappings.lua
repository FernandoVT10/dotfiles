vim.g.mapleader = " "

vim.keymap.set("n", "<Leader>w", "<CMD> w<CR>")
vim.keymap.set("n", "<Leader>q", "<CMD> q<CR>")

-- Nvim Tree
vim.keymap.set("n", "<Leader>nt", "<CMD> NvimTreeToggle<CR>")

-- Comment.nvim
vim.keymap.set("n", "<Leader>/", "<Plug>(comment_toggle_linewise_current)")
vim.keymap.set("v", "<Leader>/", "<Plug>(comment_toggle_linewise_visual)")

-- Tmux Navigation
vim.keymap.set("n", "<C-h>", "<CMD> TmuxNavigateLeft <CR>")
vim.keymap.set("n", "<C-l>", "<CMD> TmuxNavigateRight <CR>")
vim.keymap.set("n", "<C-j>", "<CMD> TmuxNavigateDown <CR>")
vim.keymap.set("n", "<C-k>", "<CMD> TmuxNavigateUp <CR>")

-- Tabs
vim.keymap.set("n", "<Leader>t", "<CMD> tabnew<CR>")
