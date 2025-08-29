local map = vim.keymap.set
-- swap jk and g(jk)
map({ "n", "x" }, "j", "gj", { noremap = true })
map({ "n", "x" }, "k", "gk", { noremap = true })

map({ "n", "x" }, "gj", "j", { noremap = true })
map({ "n", "x" }, "gk", "k", { noremap = true })

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

map("n", "<leader>fk", function()
	require("telescope.builtin").keymaps()
end, { desc = "Find keymap" })

-- toggleterm
map({ "n", "i", "t" }, "<C-\\><C-\\>", "<cmd>ToggleTerm direction=float<cr>", { desc = "Toggle terminal" })

-- oil.nvim
map("n", "<leader>e", "<CMD>Oil . --float<CR>", { desc = "Open parent directory" })

-- claudecode.nvim
map("n", "<leader>aa", "<cmd>ClaudeCode<cr>", { desc = "Toggle Claude Code" })
map(
	"n",
	"<leader>as",
	"<cmd>ClaudeCode --dangerously-skip-permissions<cr>",
	{ desc = "Toggle Claude Code (skip-permissions)" }
)
map("n", "<leader>af", "<cmd>ClaudeCodeFocus<cr>", { desc = "Focus Claude Code" })
map("v", "<leader>as", "<cmd>ClaudeCodeSend<cr>", { desc = "Send to Claude Code" })
