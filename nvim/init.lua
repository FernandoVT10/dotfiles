local utils = require("utils")

vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2

-- Relative numbers
vim.opt.relativenumber = true
-- This removes the useless 0 that appears when turning on relative numbers
vim.opt.nu = true


require("mappings")
require("plugins")

vim.opt.termguicolors = true
vim.cmd.colorscheme("tokyonight-night")

-- Compile Mode highlight
vim.cmd.highlight("CompileModeError", "guifg=#f7768e")
vim.cmd.highlight("CompileModeMessageRow", "guifg=#7aa2f7")
vim.cmd.highlight("CompileModeMessageCol", "guifg=#7dcfff")

vim.opt.list = true
vim.opt.listchars:append("trail:$")

-- Deactivate lsp diagnostic by default
utils.toggleLspDiagnostic()

-- Use system clipboard
vim.api.nvim_set_option("clipboard", "unnamedplus")

-- Use 4-space tab for c files
vim.cmd("autocmd FileType c setlocal tabstop=4 shiftwidth=4 softtabstop=4");

require("lspSetup")
