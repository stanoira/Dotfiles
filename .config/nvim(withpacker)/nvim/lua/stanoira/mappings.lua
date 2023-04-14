local map = vim.api.nvim_set_keymap
local noremap = { noremap = true }

-- map leader -> <SPACE>
map("n", "<Space>", "", {})
vim.g.mapleader = " "

-- esc esc -> jj not proud of this, but i got used to it
-- map("i", "jj", "<ESC><ESC>", noremap)

-- idk what the fuck is this but it scares me.
--map("n", "Q", "<Nop>", noremap)

map("n", "<C-Up>", ":resize -2<CR>", noremap)
map("n", "<C-Down>", ":resize +2<CR>", noremap)
map("n", "<C-Left>", ":vertical resize +2<CR>", noremap)
map("n", "<C-Right>", ":vertical resize -2<CR>", noremap)
map("n", "<leader><leader>", ":NvimTreeToggle<CR>", noremap)

-- Stay in indent mode
map("v", "<", "<gv", noremap)
map("v", ">", ">gv", noremap)

-- Telescope
map("n", "<leader>f", "<cmd>Telescope find_files hidden=true no_ignore=true<CR>", noremap)
map("n", "<leader>g", "<cmd>Telescope live_grep<CR>", noremap)
map("n", "<leader>tt", "<cmd>Telescope<CR>", noremap)
map("n", "<leader>tc", "<cmd>Telescope colorscheme<CR>", noremap)
map("n", "<leader>tf", "<cmd>Telescope file_browser<CR>", noremap)

-- Colorizer
map("n", "<leader>bca", "<cmd>ColorizerAttachToBuffer<CR>", noremap)
map("n", "<leader>bcd", "<cmd>ColorizerDetachFromBuffer<CR>", noremap)
map("n", "<leader>bcr", "<cmd>ColorizerReloadAllBuffers<CR>", noremap)

-- Harpoon
map("n", "<leader>h", "<cmd>lua require('harpoon.ui').nav_file(1)<CR>", noremap)
map("n", "<leader>j", "<cmd>lua require('harpoon.ui').nav_file(2)<CR>", noremap)
map("n", "<leader>k", "<cmd>lua require('harpoon.ui').nav_file(3)<CR>", noremap)
map("n", "<leader>l", "<cmd>lua require('harpoon.ui').nav_file(4)<CR>", noremap)
map("n", "<leader>;", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<CR>", noremap)
map("n", "<leader>m", "<cmd>lua require('harpoon.mark').add_file()<CR>", noremap)
map("n", "<leader>M", "<cmd>lua require('harpoon.mark').rm_file()<CR>", noremap)

--Stuff
map("n", "<leader>s", "<cmd>Twilight<CR>", noremap)
