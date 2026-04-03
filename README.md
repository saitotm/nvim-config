# nvim-config
- lazy.nvim + lockfile
- mason.nvim (LSP/formatter)
- conform.nvim (format on save)
- Treesitter minimal set
- local overrides: `lua/private/` (gitignored)

## Setup
1. Install dependencies
- neovim
- tree-sitter-cli (for nvim-treesitter)
- ripgrep (for telescope)
- npm, cargo (for mason-lspconfig)

2. Run following commands
```bash
chmod +x bootstrap.sh
./bootstrap.sh
```
