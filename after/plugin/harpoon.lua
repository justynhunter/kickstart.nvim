-- This imports the modules being used.
local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

-- Sets the keybinds, in your case <leader> is <space> and <C-e> 
-- Whenever you see <C-*> that means control and whatever key. Here control+e will open the menu.
vim.keymap.set("n", "<leader>a", mark.add_file)
vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)

-- Here is the keyboard shortcuts to open the files saved in your list. The guy I got this from uses dvorak.
-- So it might be worth changing this to make them more comfortable.
vim.keymap.set("n", "<C-g>", function() ui.nav_file(1) end)
vim.keymap.set("n", "<C-t>", function() ui.nav_file(2) end)
vim.keymap.set("n", "<C-n>", function() ui.nav_file(3) end)
vim.keymap.set("n", "<C-s>", function() ui.nav_file(4) end)
