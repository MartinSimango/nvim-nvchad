---@type ChadrcConfig
local M = {}

M.ui = { theme = 'ashes' }
M.plugins = "custom.plugins"
M.mappings = require "custom.mappings"

vim.filetype.add({
  extension = {
    tf = "terraform",
  }
})

 -- visual mode highlight colour
vim.cmd[[highlight Visual guibg=#2596be]] -- guifg=#ADD8E6]]

-- vim.cmd[[
--   highlight Comment guifg=#00ffb2]] 

vim.keymap.set('i', '<C-J>', 'copilot#Accept("\\<CR>")', {
          expr = true,
          replace_keycodes = false
        })
vim.g.copilot_no_tab_map = true
return M
-- Comment        xxx guifg=#4a4e51

