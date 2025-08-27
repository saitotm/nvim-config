local map = vim.keymap.set
map("n", "<leader>fn", "<cmd>enew<cr>", { desc = "New file" })

-- Telescope
map("n", "<leader>ff", function()
	require("telescope.builtin").find_files()
end, { desc = "Find files" })

map("n", "<leader>fg", function()
	require("telescope.builtin").live_grep()
end, { desc = "Grep" })

map("n", "<leader>fb", function()
	require("telescope.builtin").buffers()
end, { desc = "Buffers" })

map("n", "<leader>fh", function()
	require("telescope.builtin").help_tags()
end, { desc = "Help" })

-- toggleterm
map("t", "<C-q>", [[<C-\><C-n>]], { desc = "Exit terminal mode" })
map({ "n", "i", "t" }, "<C-\\>", "<cmd>ToggleTerm direction=float<cr>", { desc = "Toggle terminal" })
