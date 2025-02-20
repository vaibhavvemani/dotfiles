return {
  "catppuccin/nvim",
  name = "catppuccin",
  config = function()
    require('catppuccin').setup({
      integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        treesitter = true,
        notify = true,
        mini = {
          enabled = true,
          indentscope_color = "",
        },
      }
    })
  end,
  priority = 1000,

}
