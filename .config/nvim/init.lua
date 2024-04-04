-- Lazy plugin manager (github: folke/lazy.nvim)
-- Check if lazy.nvim doesn't exist download it
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

-- Add a keymap file (require("keymap")
require("keymaps")

-- require the vim options file
require("options")

-- declaring the variables used below (check https://github.com/folke/lazy.nvim?tab=readme-ov-file#%EF%B8%8F-configuration)
local opts = {}

-- lazy.nvim setup function
require("lazy").setup("plugins", opts)
