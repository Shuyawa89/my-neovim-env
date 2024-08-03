-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps hereby

local Util = require("lazyvim.util")
local map = vim.keymap.set

-- ターミナルにおいてのC-hjklを無効化する。
vim.cmd([[
  tunmap <C-h>
  tunmap <C-j>
  tunmap <C-k>
  tunmap <C-l>
]])

-- ターミナルにボーダーを追加する。
local lazyterm = function()
  Util.terminal(nil, { cwd = Util.root(), border = "rounded" })
end
map("n", "<C-/>", lazyterm, { desc = "Terminal (root dir)" })
map("n", "<C-_>", lazyterm, { desc = "which_key_ignore" })
