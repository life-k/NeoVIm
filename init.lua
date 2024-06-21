local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

vim.wo.number = true
require("vim-options")
require("lazy").setup("plugins")

-- Set tab width to 4 spaces
vim.opt.tabstop = 4
-- Set indent width to 4 spaces
vim.opt.shiftwidth = 4
-- Use spaces instead of tabs
vim.opt.expandtab = true
