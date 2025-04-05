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

      vim.api.nvim_set_hl(0, "Normal", { bg = "#101010" })
      vim.api.nvim_set_hl(0, "NormalNC", { bg = "#101010" })
      vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#101010" })
      vim.api.nvim_set_hl(0, "FloatBorder", { bg = "#101010" })
      vim.api.nvim_set_hl(0, "SignColumn", { bg = "#101010" })
      vim.api.nvim_set_hl(0, "StatusLine", { bg = "#101010" })
      vim.api.nvim_set_hl(0, "VertSplit", { bg = "#101010" })
    end

  },
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    -- config = function()
    --   vim.cmd.colorscheme('gruvbox')
    -- end
  },
  {
    "rose-pine/neovim",
    name = "rose-pine",

    -- config = function()
    --   vim.cmd("colorscheme rose-pine")
    --
    --   vim.api.nvim_set_hl(0, "Normal", { bg = "#101010" })
    --   vim.api.nvim_set_hl(0, "NormalNC", { bg = "#101010" })
    --   vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#101010" })
    --   vim.api.nvim_set_hl(0, "FloatBorder", { bg = "#101010" })
    --   vim.api.nvim_set_hl(0, "SignColumn", { bg = "#101010" })
    --   vim.api.nvim_set_hl(0, "StatusLine", { bg = "#101010" })
    --   vim.api.nvim_set_hl(0, "VertSplit", { bg = "#101010" })
    -- end
  }

}
