return {
	"luukvbaal/statuscol.nvim",
	event = "VeryLazy",
	deps = { "lewis6991/gitsigns.nvim" },
	opts = function()
		local builtin = require("statuscol.builtin")
		return {
			bt_ignore = { "terminal", "nofile" },

			relculright = true,

			segments = {
				{
					sign = {
						namespace = { "diagnostic" },
						maxwidth = 1,
						wrap = true,
					},
				},
				{
					sign = {
						namespace = { "gitsigns" },
						maxwidth = 1,
						colwidth = 1,
						wrap = true,
					},
				},
				{
					text = { builtin.lnumfunc },
				},
				{ text = { "│" } },
			},
		}
	end,
}
