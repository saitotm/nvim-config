vim.g.mapleader = " "
local o, wo, bo = vim.o, vim.wo, vim.bo

o.termguicolors = true

o.number = true
o.relativenumber = false
wo.signcolumn = "yes"

o.expandtab = true
o.shiftwidth = 2
o.tabstop = 2

o.ignorecase = true
o.smartcase = true

o.updatetime = 200
o.timeoutlen = 600

o.splitright = true
o.splitbelow = true

o.clipboard = "unnamedplus"
