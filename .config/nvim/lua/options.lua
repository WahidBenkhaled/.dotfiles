vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4

vim.opt.smartindent = true
vim.opt.autoindent = true

-- Searching
vim.opt.incsearch = true            -- search as characters are entered
vim.opt.hlsearch = false            -- do not highlight matches
vim.opt.ignorecase = true           -- ignore case in searches by default
vim.opt.smartcase = true            -- but make it case sensitive if an uppercase is entered

vim.opt.termguicolors = true

vim.opt.scrolloff = 10

-- vim.g.mapleader = " " -- by default it is set to \

vim.opt.spelllang = "en_us" -- set language for the spellchecker
vim.opt.spell = true -- enable spellchecking

vim.opt.splitbelow = true
vim.opt.splitright = true

vim.opt.cursorline = true

vim.opt.clipboard = "unnamedplus"

vim.opt.virtualedit = "block"

vim.opt.inccommand = "split"

vim.opt.ignorecase = true

vim.opt.list = true
vim.opt.listchars:append ("space:·")
-- vim.opt.backspace=indent,eol,start
