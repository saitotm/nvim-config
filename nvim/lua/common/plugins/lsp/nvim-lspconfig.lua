return {
	"neovim/nvim-lspconfig",
	config = function()
		local lsp = require("lspconfig")
		local caps = require("cmp_nvim_lsp").default_capabilities()

		lsp.lua_ls.setup({ capabilities = caps })
		lsp.pyright.setup({ capabilities = caps })
		lsp.ts_ls.setup({ capabilities = caps })
		lsp.rust_analyzer.setup({ capabilities = caps })
	end,
}
