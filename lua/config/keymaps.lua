-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--

vim.keymap.set("n", "<leader>fr", function()
  require("telescope.builtin").oldfiles({ cwd_only = true })
end, { desc = "Recent Files (cwd)" })

-- Or for all recent files
vim.keymap.set("n", "<leader>fR", function()
  require("telescope.builtin").oldfiles()
end, { desc = "Recent Files (all)" })
