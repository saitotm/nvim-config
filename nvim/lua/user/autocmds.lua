local aug = vim.api.nvim_create_augroup
local au = vim.api.nvim_create_autocmd

aug("UserBasics", { clear = true })
au("TextYankPost", { group = "UserBasics", callback = function() vim.highlight.on_yank() end })
