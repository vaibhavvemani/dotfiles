return {
  'akinsho/bufferline.nvim',
  dependencies = {
    'moll/vim-bbye',
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    local mocha = require("catppuccin.palettes").get_palette "mocha"

    require('bufferline').setup {
      options = {
        mode = 'buffers',                    -- set to "tabs" to only show tabpages instead
        themable = true,                     -- allows highlight groups to be overriden i.e. sets highlights as default
        sort_by = 'insert_at_end',
      },
      highlights = require("catppuccin.groups.integrations.bufferline").get {
        styles = { "italic", "bold" },
        custom = {
          all = {
            fill = { bg = "#000000" },
          },
          mocha = {
            background = { fg = mocha.text },
          },
          latte = {
            background = { fg = "#000000" },
          },
        },
      },
    }
  end,
}
