local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G", { desc = "Select all" })

-- Copy and paste
keymap.set({ "v", "n" }, "<C-c>", '"+y')
keymap.set({ "v", "n" }, "<C-v>", '"+p')

-- Yank
keymap.set("n", "Y", "_y$", { desc = "Inline yank" })
