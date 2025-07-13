vim.g.mapleader = " "

vim.opt.fileformat = "unix"
vim.opt.clipboard = "unnamedplus"

vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.statuscolumn = "%!v:lua.custom_statuscolumn()"

vim.opt.scrolloff = 10
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.opt.termguicolors = true

-- max line length
vim.opt.colorcolumn = "80"

vim.opt.incsearch = true

vim.opt.spelllang = { 'en', 'de' }

-- Folding
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
vim.opt.foldcolumn = "0"
vim.opt.foldtext = ""
vim.opt.foldlevel = 99
vim.opt.foldlevelstart = -1
vim.opt.foldnestmax = 4

vim.diagnostic.config({
    virtual_lines = false,
    virtual_text = true,
})
