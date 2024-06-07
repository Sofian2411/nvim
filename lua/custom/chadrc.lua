---@type ChadrcConfig
local M = {}

M.ui = {
    theme = 'catppuccin',
    transparency = false,
}

M.plugins = "custom.plugins"
M.mappings = require("custom.mappings")
vim.cmd([[
augroup _tiger
autocmd!
autocmd BufRead,BufEnter *.tig set filetype=tiger
autocmd BufRead,BufEnter *.tih set filetype=tiger
autocmd BufRead,BufEnter *.ll set filetype=lex
augroup end
]])

vim.cmd([[
hi Visual guibg=#47455D
hi @comment guifg=#787878
]])

-- Vim options {{{
vim.o.incsearch = true
vim.o.smartcase = true
vim.o.ignorecase = true
vim.o.number = true
vim.o.relativenumber = true
vim.o.ttimeoutlen = 50
vim.o.cc = "80"
vim.o.sw = 4
vim.o.sts = 4
vim.o.ts = 4
vim.o.expandtab = true
vim.o.smarttab = true
vim.o.autoindent = true
vim.o.smartindent = true
vim.o.cindent = true
vim.o.wrap = false
vim.o.foldenable = true
vim.o.foldmethod = "marker"
vim.o.hidden = true
vim.o.undofile = false
vim.lsp.set_log_level("debug")
-- }}}

-- Vim script {{{
vim.cmd([[
autocmd Filetype c setlocal foldmethod=syntax | set fdl=99
autocmd Filetype make setlocal noexpandtab
]])
-- }}}

-- Mappings {{{
vim.keymap.set("n", "<C-w>", "<C-w>w", {noremap = true})
vim.keymap.set("n", "<C-Left>", "<C-w>H", {noremap = true})
vim.keymap.set("n", "<C-Down>", "<C-w>J", {noremap = true})
vim.keymap.set("n", "<C-Up>", "<C-w>K", {noremap = true})
vim.keymap.set("n", "<C-Right>", "<C-w>L", {noremap = true})
vim.keymap.set("n", "<C-H>", "<C-w>h", {noremap = true})
vim.keymap.set("n", "<C-J>", "<C-w>j", {noremap = true})
vim.keymap.set("n", "<C-K>", "<C-w>k", {noremap = true})
vim.keymap.set("n", "<C-L>", "<C-w>l", {noremap = true})

vim.keymap.set("n", "zo", "zO", {noremap = true})
vim.keymap.set("n", "zc", "zC", {noremap = true})
vim.keymap.set("n", "zr", "zR", {noremap = true})
vim.keymap.set("n", "zm", "zM", {noremap = true})

vim.keymap.set("i", "jj", "<Esc>", {noremap = true})
vim.keymap.set("n", "<silent> <leader>f", ":Format<CR>", {noremap = true})
vim.keymap.set("n", "<silent> <leader>F", ":FormatWrite<CR>", {noremap = true})
-- }}}

return M
