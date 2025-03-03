return {
  "catppuccin/nvim",
  name = "catppuccin",
  config = function()
    require('catppuccin').setup({
      flavour = "mocha",
      integrations = {
        telescope = {
          enabled = true,
        },
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        neotree = true,
        treesitter = true,
        notify = true,
        mini = {
          enabled = true,
          indentscope_color = "",
        },
      },
      transparent_background = true,
    })
  end,
  priority = 1000,

}
