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

-- Keymap to open current file in Typora
vim.keymap.set("n", "<leader>ot", function()
  -- Get the full path of the current buffer
  local file = vim.fn.expand("%:p")

  if file == "" then
    vim.notify("Buffer has no file path", vim.log.levels.WARN)
    return
  end

  -- Detect OS and prepare the command
  local cmd
  if vim.fn.has("macunix") == 1 then
    -- macOS
    cmd = { "open", "-a", "Typora", file }
  elseif vim.fn.has("win32") == 1 then
    -- Windows (using 'start' ensures it detaches correctly)
    cmd = { "cmd.exe", "/C", "start", "", "typora", file }
  else
    -- Linux
    cmd = { "typora", file }
  end

  -- Run the command asynchronously
  vim.fn.jobstart(cmd, { detach = true })
  vim.notify("Opening in Typora...", vim.log.levels.INFO)
end, { desc = "Open in Typora" })
