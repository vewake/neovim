-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.api.nvim_set_keymap('n', '<C-`>', ':ToggleTerm<CR>', { noremap = true, silent = true })

-- You can also bind it in terminal mode
vim.api.nvim_set_keymap('t', '<C-`>', '<C-\\><C-n>:ToggleTerm<CR>', { noremap = true, silent = true })

