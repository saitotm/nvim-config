local icons = require("common.icons")

vim.diagnostic.config({
	virtual_text = {
		prefix = "●",
		spacing = 2,
		severity = { min = vim.diagnostic.severity.WARN }, -- WARN以上だけにするなど調整可
	},
	signs = {
		text = {
			[vim.diagnostic.severity.ERROR] = icons.error,
			[vim.diagnostic.severity.WARN] = icons.warn,
			[vim.diagnostic.severity.HINT] = icons.hint,
			[vim.diagnostic.severity.INFO] = icons.info,
		},
	},
})
