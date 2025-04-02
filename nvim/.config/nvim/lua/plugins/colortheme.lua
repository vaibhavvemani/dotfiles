return {
  {
    "folke/tokyonight.nvim",
    name = "tokyonight",
    priority = 1000,
    opts = {},

    --[[
    config = function ()
      vim.cmd.colorscheme "tokyonight-night"
    end
    --]]
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,

    --[[
    config = function()
      vim.cmd.colorscheme "catppuccin-mocha"
    end
    --]]
  },
  {
    'sainnhe/gruvbox-material',
    priority = 1000,

    config = function()
      vim.cmd.colorscheme('gruvbox-material')
    end

  },
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    config = function()
      vim.cmd.colorscheme('gruvbox')
    end
  },
  {
    "rose-pine/neovim",
    name = "rose-pine",

    --[[
    config = function()
      vim.cmd("colorscheme rose-pine")
    end
    --]]
  }

}
