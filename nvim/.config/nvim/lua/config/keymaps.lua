-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Select all
opts.desc = "Select all"
keymap.set("n", "<C-a>", "gg<S-v>G", opts)

-- Yank
opts.desc = "Inline yank"
keymap.set("n", "Y", "_y$", opts)

-- Split window
opts.desc = "Split window below"
keymap.set("n", "ss", ":split<Return>", opts)
opts.desc = "Split window right"
keymap.set("n", "sv", ":vsplit<Return>", opts)
