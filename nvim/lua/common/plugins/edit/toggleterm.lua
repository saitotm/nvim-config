return {
	"akinsho/toggleterm.nvim",
	version = "*",
	opts = {
		persist_size = true,
		size = function(term)
			if term.direction == "vertical" then
				return math.max(60, math.floor(vim.o.columns * 0.5)) -- 80列以上/画面40%
			end
			return 15
		end,
		on_open = function(term)
			vim.api.nvim_buf_set_keymap(term.bufnr, "n", "<C-q>", "<cmd>close<CR>", { noremap = true, silent = true })
			vim.api.nvim_buf_set_keymap(term.bufnr, "t", "<C-q>", "<cmd>close<CR>", { noremap = true, silent = true })
		end,
	},
}
