vim.g.mapleader = " "
local o, wo, bo = vim.o, vim.wo, vim.bo

o.termguicolors = true

o.number = true
o.numberwidth = 2
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

-- Disable cursor blinking in terminal mode
o.guicursor = table.concat({
	"a:blinkon0", -- Disable blinking in all modes
	"n-v-c-sm:block", -- Normal/Visual/Command/Showmatch: block cursor
	"i-ci-ve:ver25", -- Insert modes: vertical bar (25%)
	"r-cr-o:hor20", -- Replace/Operator-pending: horizontal bar (20%)
}, ",")
