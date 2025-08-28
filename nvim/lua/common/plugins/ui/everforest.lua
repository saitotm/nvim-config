return {
	"sainnhe/everforest",
	lazy = false,
	priority = 1000,
	config = function()
		vim.g.everforest_background = "hard" -- hard / medium / soft
		vim.g.everforest_transparent_background = 0
		vim.g.everforest_enable_italic = 1
		vim.g.everforest_disable_italic_comment = 0
		vim.cmd.colorscheme("everforest")
	end,
}
