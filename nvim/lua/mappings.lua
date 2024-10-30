local utils = require("utils")

vim.g.mapleader = " "

vim.keymap.set("n", "<Leader>w", "<CMD>w<CR>")
vim.keymap.set("n", "<Leader>q", "<CMD>q<CR>")

-- Removes search highlight
vim.keymap.set("n", "<Esc>", "<CMD>noh<CR>")

-- Nvim Tree
vim.keymap.set("n", "<Leader>nt", "<CMD>NvimTreeToggle<CR>")

-- Comment.nvim
vim.keymap.set("n", "<Leader>/", "<Plug>(comment_toggle_linewise_current)")
vim.keymap.set("v", "<Leader>/", "<Plug>(comment_toggle_linewise_visual)")

-- Tmux Navigation
vim.keymap.set("n", "<C-h>", "<CMD>TmuxNavigateLeft <CR>")
vim.keymap.set("n", "<C-l>", "<CMD>TmuxNavigateRight <CR>")
vim.keymap.set("n", "<C-j>", "<CMD>TmuxNavigateDown <CR>")
vim.keymap.set("n", "<C-k>", "<CMD>TmuxNavigateUp <CR>")

-- Tabs
vim.keymap.set("n", "<Leader>t", "<CMD>tabnew<CR>")

-- Telescope
vim.keymap.set("n", "<Leader>ff", "<CMD>Telescope find_files<CR>")
vim.keymap.set("n", "<Leader>fg", "<CMD>Telescope live_grep<CR>")
vim.keymap.set("n", "<Leader>fb", "<CMD>Telescope buffers<CR>")

-- Compile Mode
vim.keymap.set("n", "<Leader>c", ":below Compile ")
vim.keymap.set("n", "<Leader>rc", ":below Recompile<CR>")
vim.keymap.set("n", "<Leader>ne", ":CompileNextError<CR>")
vim.keymap.set("n", "<Leader>pe", ":CompilePrevError<CR>")

-- LSP mappings
vim.keymap.set("n", "gd", "<CMD>lua vim.lsp.buf.definition()<CR>")

-- Toggle LSP diagnostics
vim.keymap.set("n", "<Leader>dg", utils.toggleLspDiagnostic)
