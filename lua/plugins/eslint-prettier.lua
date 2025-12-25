-- return {
--   {
--     "stevearc/conform.nvim",
--     opts = {
--       formatters_by_ft = {
--         javascript = { "eslint_d" },
--         javascriptreact = { "eslint_d" },
--         typescript = { "eslint_d" },
--         typescriptreact = { "eslint_d" },
--         vue = { "eslint_d" },
--       },
--     },
--   },
-- }
--
return {
  {
    "stevearc/conform.nvim",
    opts = function()
      local function js_formatter(bufnr)
        if require("conform").get_formatter_info("biome", bufnr).available then
          return { "biome" }
        else
          return { "eslint_d" }
        end
      end

      return {
        formatters_by_ft = {
          javascript = js_formatter,
          javascriptreact = js_formatter,
          typescript = js_formatter,
          typescriptreact = js_formatter,
          vue = { "eslint_d" },
        },
        formatters = {
          biome = {
            condition = function(self, ctx)
              return vim.fs.find({ "biome.json", "biome.jsonc" }, {
                path = ctx.filename,
                upward = true,
              })[1]
            end,
          },
        },
      }
    end,
  },
}
