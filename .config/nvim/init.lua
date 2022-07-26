require("stanoira.sets")
require("stanoira.plugins")
require("stanoira.mappings")
require("stanoira.autocommands")

-- set colorscheme
vim.cmd("colorscheme rose-pine")
-- vim.cmd("colorscheme tokyonight")
-- vim.cmd("colorscheme nord")
-- vim.cmd("colorscheme nordfox")

require("stanoira.lsp")
require("stanoira.cmp")
require("stanoira.treesitter")
-- require("stanoira.hexcolors")
require("stanoira.autopairs")
require("stanoira.comment")
require("stanoira.nvim-tree")
require("stanoira.alpha")
require("stanoira.telescope")
require("stanoira.lualine")
require("stanoira.todocomments")
require("stanoira.toggleterm")
require("stanoira.indentline")
require("stanoira.twilight")
require("packer_compiled")
