return {
	-- mason
	{ "williamboman/mason.nvim", config = true },
	{
		"williamboman/mason-lspconfig.nvim",
		dependencies = { "mason.nvim" },
		opts = { ensure_installed = { "lua_ls", "pyright", "ts_ls", "rust_analyzer" } },
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lsp = require("lspconfig")
			local caps = require("cmp_nvim_lsp").default_capabilities()

			lsp.lua_ls.setup({ capabilities = caps })
			lsp.pyright.setup({ capabilities = caps })
			lsp.ts_ls.setup({ capabilities = caps })
			lsp.rust_analyzer.setup({ capabilities = caps })
		end,
	},
	-- formatter
	{
		"stevearc/conform.nvim",
		event = "BufWritePre",
		opts = {
			formatters_by_ft = {
				lua = { "stylua" },
				python = { "ruff_format" },
				javascript = { "prettier" },
				typescript = { "prettier" },
				json = { "jq" },
				yaml = { "yamlfmt" },
				rust = { "rustfmt" },
			},
			format_on_save = function(buf)
				-- 大きなファイルはスキップ例
				local max = 256 * 1024
				local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
				if ok and stats and stats.size > max then
					return nil
				end
				return { timeout_ms = 1000, lsp_fallback = true }
			end,
		},
	},
}
