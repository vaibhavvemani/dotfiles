return {
  {
    "folke/ts-comments.nvim",
    event = "VeryLazy",
    opts = {},

    config = function()
      opts = {
        lang = {
          python = "# %s",
          javascript = {
            "// %s",
            "/* %s */",
            jsx_element = "{/* %s */}",
            jsx_fragment = "{/* %s */}",
          },
          css = "/* %s */",
          html = "<!-- %s -->",
          lua = "-- %s",
        },
      }
    end
  },
  {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    config = true
    -- use opts = {} for passing setup options
    -- this is equivalent to setup({}) function
  }
}
