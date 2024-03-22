vim.cmd([[set number]])
vim.cmd([[set relativenumber]])
vim.cmd([[set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz]])
vim.cmd([[colorscheme gruvbox]])

vim.opt.tabstop = 4 
vim.opt.softtabstop = 4 
vim.opt.shiftwidth = 4
vim.opt.autowriteall = true 
vim.opt.clipboard = "unnamedplus"
vim.opt.background = "dark"
vim.opt.wrap = false
vim.opt.guifont = "FiraCode Nerd Font"
vim.opt.scrolloff = 8
vim.opt.fillchars:append { eob = " " }
