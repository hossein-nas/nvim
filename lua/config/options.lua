-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--

vim.opt.timeoutlen = 0
vim.opt.mouse = ""
vim.opt.shellcmdflags = "-ic"

-- Disable Neovide animations
vim.g.neovide_cursor_animation_length = 0
vim.g.neovide_scroll_animation_length = 0
vim.g.neovide_cursor_trail_size = 0
vim.g.neovide_cursor_animate_in_insert_mode = false
