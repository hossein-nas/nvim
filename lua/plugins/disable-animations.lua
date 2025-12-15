return {
  -- Disable smooth scrolling in snacks.nvim
  {
    "folke/snacks.nvim",
    opts = {
      scroll = { enabled = false },
      -- Ensure no other animation modules are active if they exist
      animate = { enabled = false },
    },
  },
  -- Explicitly disable mini.animate
  { "echasnovski/mini.animate", enabled = false },
  -- Disable other cursor animation plugins if present
  { "spherical-cow/smear-cursor.nvim", enabled = false },
  { "gen740/SmoothCursor.nvim", enabled = false },
}
