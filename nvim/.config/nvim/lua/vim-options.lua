vim.cmd "set expandtab"
vim.cmd "set tabstop=2"
vim.cmd "set softtabstop=2"
vim.cmd "set shiftwidth=2"
vim.cmd "set relativenumber"

vim.keymap.set('n', '<leader>w', ':w<CR>', { silent = true })
vim.keymap.set('n', '<leader>wq', ':wq<CR>', { silent = true })


vim.g.mapleader = " "
vim.opt.termguicolors = true                    -- set term gui colors (most terminals support this)
vim.opt.splitright = true                       -- force all vertical splits to go to the right of current window
vim.opt.splitbelow = true                       -- force all horizontal splits to go below current window
vim.opt.ignorecase = true                       -- ignore case in search patterns
vim.o.conceallevel = 2                          -- Something that obsidian requires
vim.opt.signcolumn = "yes"                                           -- always show the sign column, otherwise it would shift the text each time
vim.opt.writebackup = false                     -- if a file is being edited by another program, do not create swapfiles
vim.opt.updatetime = 100                        -- faster completion (4000ms default)
vim.opt.undofile = true                         -- enable persistent undo
vim.opt.swapfile = false                        -- creates a swapfile
vim.opt.smartindent = true                      -- make indenting smarter again
vim.opt.shiftwidth = 2                          -- make indenting smarter again
vim.opt.smartcase = true                        -- smart case
vim.opt.scrolloff = 22                          -- add 22 lines to the scrolloff keep cursor in middle of screen
vim.opt.ttimeoutlen = 10
vim.o.fileencodings = "utf-8"                   -- utf-8 is the default
vim.opt.cursorline = true                       -- Enable cursor line highlight
vim.opt.signcolumn = "yes"                      -- Enable the sign column to prevent the screen from jumping
vim.opt.colorcolumn = "120"                     -- Place a column line
vim.opt.textwidth = 118                         -- Set textwidth to 118 to wrap the text after 118 characters
vim.opt.completeopt = { "menuone", "noselect" } -- mostly just for cmp
-- For Lua
vim.opt.runtimepath:append "/home/suyash/.config/nvim/lua"

-- Disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- if a file is a .env or .envrc file, set the filetype to sh
vim.filetype.add({
  filename = {
    [".env"] = "sh",
    [".envrc"] = "sh",
    ["*.env"] = "sh",
    ["*.envrc"] = "sh"
  }
})

-- --Add spellchecks
-- vim.opt.spelllang = 'en_us'
-- vim.opt.spell = true
-- vim.lsp.handlers["textDocument/publishDiagnostics"] = function(err, result, ctx, config)
--   require("ts-error-translator").translate_diagnostics(err, result, ctx, config)
--   vim.lsp.diagnostic.on_publish_diagnostics(err, result, ctx, config)
-- end
--
--

