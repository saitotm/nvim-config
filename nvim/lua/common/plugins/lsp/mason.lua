return {
	{ "williamboman/mason.nvim", config = true },
	{
		"mason-org/mason-lspconfig.nvim",
		dependencies = {
			"mason-org/mason.nvim",
			"neovim/nvim-lspconfig",
		},
		opts = {
			ensure_installed = {
				"lua_ls",
				"pyright",
				"ts_ls",
				"rust_analyzer",
				"hls",
				"purescriptls",
			},
		},
	},
	{
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		dependencies = { "williamboman/mason.nvim" },
		opts = {
			ensure_installed = {
				"ormolu", -- haskell formatter
				"purescript-tidy",
			},
		},
	},
}
