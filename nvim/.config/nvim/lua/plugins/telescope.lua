return {
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      local builtin = require("telescope.builtin")
      vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
      vim.keymap.set("n", "<leader>ffg", builtin.live_grep, {})
      vim.keymap.set("n", "<leader>fgf", builtin.git_files, {})
      vim.keymap.set("n", "<leader>fgb", builtin.git_branches, {})
      vim.keymap.set("n", "<leader>fgs", builtin.git_status, {})
      vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
    end,
  },
}
