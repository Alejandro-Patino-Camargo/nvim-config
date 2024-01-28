-- Import the required modules
local keymap = vim.keymap

-- Exit insert mode with "jk"
keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

-- Delete without yanking to register
keymap.set("n", "x", '"_x') -- delete char without yank
keymap.set("x", "x", '"_x') -- delete visual selection without yank

-- Vertical and Horizontal Resize keybindings
keymap.set("n", "<C-Up>", ":resize +2<CR>", { desc = "Increase window height" })
keymap.set("n", "<C-Down>", ":resize -2<CR>", { desc = "Decrease window height" })

-- Horizontal Movement with Control key
keymap.set("n", "<C-]>", ":vertical resize -3<CR>", { desc = "Decrease window width" })
keymap.set("n", "<C-[>", ":vertical resize +3<CR>", { desc = "Increase window width" })

-- Other window management keybindings
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })
keymap.set("n", "<leader>sx", ":close<CR>", { desc = "Close current split" })
