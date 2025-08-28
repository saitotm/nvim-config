return {
	-- Core
	{ "folke/lazy.nvim" },
	{ "nvim-lua/plenary.nvim", lazy = true },
	--{ "folke/which-key.nvim", event = "VeryLazy", opts = {} },
	{ "nvim-tree/nvim-web-devicons", lazy = true },

	-- UI
	{
		"nvim-lualine/lualine.nvim",
		event = "VeryLazy",
		opts = { options = { theme = "auto", globalstatus = true } },
	},
	{ "nvim-telescope/telescope.nvim", cmd = "Telescope", dependencies = { "nvim-lua/plenary.nvim" } },

	-- Treesitter
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		event = { "BufReadPost", "BufNewFile" },
		opts = {
			ensure_installed = {
				"lua",
				"vim",
				"vimdoc",
				"bash",
				"python",
				"rust",
				"javascript",
				"typescript",
				"json",
				"yaml",
				"markdown",
			},
			highlight = { enable = true },
			indent = { enable = true },
			incremental_selection = { enable = true },
		},
		config = function(_, opts)
			require("nvim-treesitter.configs").setup(opts)
		end,
	},

	-- Complete
	{
		"hrsh7th/nvim-cmp",
		event = "InsertEnter",
		dependencies = {
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-path",
			"L3MON4D3/LuaSnip",
			"saadparwaiz1/cmp_luasnip",
		},
		config = function()
			local cmp = require("cmp")
			local ls = require("luasnip")
			require("luasnip.loaders.from_vscode").lazy_load()
			cmp.setup({
				snippet = {
					expand = function(args)
						ls.lsp_expand(args.body)
					end,
				},
				mapping = cmp.mapping.preset.insert({
					["<C-n>"] = cmp.mapping.select_next_item(),
					["<C-p>"] = cmp.mapping.select_prev_item(),
					["<CR>"] = cmp.mapping.confirm({ select = true }),
					["<C-Space>"] = cmp.mapping.complete(),
				}),
				sources = { { name = "nvim_lsp" }, { name = "buffer" }, { name = "path" } },
			})
		end,
	},
}
