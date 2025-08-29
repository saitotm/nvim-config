return {
	"obsidian-nvim/obsidian.nvim",
	version = "*",
	enabled = function()
		return pcall(require, "private.obsidian")
	end,
	event = "VeryLazy",
	opts = function()
		local ok, private = pcall(require, "private.obsidian")
		if not ok then
			return {}
		end

		local defaults = {
			workspaces = {},
			legacy_commands = false,
			ui = { enable = false },
		}
		return vim.tbl_deep_extend("force", defaults, private)
	end,
}
