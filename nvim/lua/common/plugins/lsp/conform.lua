return {
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
			-- skip if the file is large
			local max = 256 * 1024
			local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
			if ok and stats and stats.size > max then
				return nil
			end
			return { timeout_ms = 1000, lsp_fallback = true }
		end,
	},
}
