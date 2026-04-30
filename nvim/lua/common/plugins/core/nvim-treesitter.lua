return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	lazy = false,
	config = function()
		local ts = require("nvim-treesitter")
		local langs = {
			"lua",
			"vim",
			"vimdoc",
			"bash",
			"python",
			"rust",
			"javascript",
			"typescript",
			"haskell",
			"purescript",
			"json",
			"yaml",
			"markdown",
		}

		ts.install(langs)

		vim.api.nvim_create_autocmd("FileType", {
			pattern = langs,
			callback = function()
				vim.treesitter.start()
				vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
			end,
		})
	end,
}
