local icons = require("common.icons")

vim.diagnostic.config({
	signs = {
		text = {
			[vim.diagnostic.severity.ERROR] = icons.error,
			[vim.diagnostic.severity.WARN] = icons.warn,
			[vim.diagnostic.severity.HINT] = icons.hint,
			[vim.diagnostic.severity.INFO] = icons.info,
		},
	},
})
