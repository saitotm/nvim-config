return {
	{ "williamboman/mason.nvim", config = true },
	{
		"williamboman/mason-lspconfig.nvim",
		dependencies = { "mason.nvim" },
		opts = { ensure_installed = { "lua_ls", "pyright", "ts_ls", "rust_analyzer" } },
	},
}
