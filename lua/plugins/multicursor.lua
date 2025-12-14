return {
  {
    "mg979/vim-visual-multi",
    branch = "master",
    init = function()
      -- OPTIONAL: Customize keybindings (examples below)
      vim.g.VM_maps = {
        ["Find Under"] = "<C-n>",
        ["Find Subword Under"] = "<C-n>",
        ["Select All"] = "<C-S-n>",
        ["Add Cursor Down"] = "<C-S-Down>",
        ["Add Cursor Up"] = "<C-S-Up>",
      }

      -- OPTIONAL: Better UX defaults
      vim.g.VM_theme = "purple"
      vim.g.VM_show_warnings = 0
      vim.g.VM_default_mappings = 1
    end,
  },
}
