return {
	"nvim-telescope/telescope.nvim",
	cmd = "Telescope",
	dependencies = { "nvim-lua/plenary.nvim" },
	opts = {
		pickers = {
			find_files = {
				hidden = true,
				no_ignore = true,
				file_ignore_patterns = { "%.git/" },
			},
			live_grep = {
				additional_args = function(_)
					return { "--hidden", "--no-ignore", "--glob=!**/.git/*" }
				end,
			},
		},
	},
}
