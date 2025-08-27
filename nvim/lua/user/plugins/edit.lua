return {
	{ "numToStr/Comment.nvim", event = "VeryLazy", opts = {} },
	{ "windwp/nvim-autopairs", event = "InsertEnter", opts = {} },
	{ "lewis6991/gitsigns.nvim", event = "BufReadPre", opts = {} },
	{
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
		},
		config = function(_, opts)
			require("toggleterm").setup(opts)

			local Terminal = require("toggleterm.terminal").Terminal
			local cc = Terminal:new({ cmd = "claude", hidden = true, direction = "vertical" })
			local cc_danger =
				Terminal:new({ cmd = "claude --dangerously-skip-permissions", hidden = true, direction = "vertical" })

			vim.keymap.set("n", "<leader>tc", function()
				cc:toggle()
			end, { desc = "Toggle Claude Code" })

			vim.keymap.set("n", "<leader>td", function()
				cc_danger:toggle()
			end, { desc = "Toggle Claude Code --dangerously-skip-permissions" })
		end,
	},
}
