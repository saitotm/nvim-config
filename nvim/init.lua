-- bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
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

require("common.options")
require("common.keymaps")
require("common.autocmds")
require("common.ui")

-- lazy
local spec = {
	{ import = "common.plugins.core" },
	{ import = "common.plugins.edit" },
	{ import = "common.plugins.lsp" },
	{ import = "common.plugins.ui" },
}
if vim.fn.isdirectory(vim.fn.stdpath("config") .. "/lua/private/plugins") == 1 then
	table.insert(spec, { import = "private.plugins" })
end
require("lazy").setup(spec, {
	change_detection = { notify = false },
})

-- load loca.init if it exists
pcall(require, "private.init")
