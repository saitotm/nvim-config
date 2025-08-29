return {
	"coder/claudecode.nvim",
	dependencies = { "folke/snacks.nvim" },
	config = true,
	opts = {
		terminal = {
			split_width_percentage = 0.35,
			snacks_win_opts = {
				keys = {
					claude_hide = {
						"<C-q>",
						function(self)
							self:hide()
						end,
						mode = "t",
						desc = "Hide Claude Code(Ctrl+q)",
					},
				},
			},
		},
	},
}
