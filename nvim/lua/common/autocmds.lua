local aug = vim.api.nvim_create_augroup
local au = vim.api.nvim_create_autocmd

aug("UserBasics", { clear = true })

au("TextYankPost", {
	group = "UserBasics",
	callback = function()
		vim.highlight.on_yank()
	end,
})

au("LspAttach", {
	group = "UserBasics",
	callback = function(args)
		local telescope = require("telescope.builtin")
		local map = function(mode, lhs, rhs, desc)
			vim.keymap.set(mode, lhs, rhs, { buffer = bufnr, desc = desc })
		end

		map("n", "gd", telescope.lsp_definitions, "Definitions (Telescope)")
		map("n", "gD", vim.lsp.buf.declaration, "Go to Declaration")
		map("n", "gi", telescope.lsp_implementations, "Implementations (Telescope)")
		map("n", "gr", telescope.lsp_references, "References (Telescope)")
		map("n", "K", vim.lsp.buf.hover, "Hover")
	end,
})

au("FileType", {
	pattern = { "csv", "tsv", "csv_semicolon", "csv_pipe" },
	callback = function(args)
		local map = function(mode, lhs, rhs, desc)
			vim.keymap.set(mode, lhs, rhs, { buffer = args.buf, desc = desc })
		end

		map("n", "<leader>csv", "<cmd>CsvViewToggle<cr>", "CSV: toggle CSV view")
	end,
})
