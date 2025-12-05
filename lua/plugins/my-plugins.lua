return {
  { "sainnhe/sonokai" },

  {
    "Lazyvim/LazyVim",
    opts = {
      colorshcema = "sonokai",
    },
  },

  {
    "chentoast/marks.nvim",
    config = function()
      require("marks").setup()
    end,
  },

  -- {
  --   "folke/which-key.nvim",
  --   opts = function()
  --     local wk = require("which-key")
  --     wk.register({
  --       ["<leader>f"] = { name = "+file" },
  --       ["<leader>ff"] = { "<cmd>Telescope find_files<cr>", "Find File" },
  --       ["<leader>fr"] = { "<cmd>Telescope oldfiles<cr>", "Open Recent Files" },
  --       ["<leader>fn"] = { "<cmd>enew<cr>", "New File" },
  --     })
  --   end,
  -- },
}
