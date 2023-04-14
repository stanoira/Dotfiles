local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
	return
end

-- local dashboard = require("alpha.themes.dashboard")
-- dashboard.section.header.val = {
-- 	[[                                                 ]],
-- 	[[                                                 ]],
-- 	[[                                                 ]],
-- 	[[                                                 ]],
-- 	[[                                                 ]],
-- 	[[                                                 ]],
-- 	[[                                                 ]],
-- 	[[                                                 ]],
-- 	[[                               __                ]],
-- 	[[  ___     ___    ___   __  __ /\_\    ___ ___    ]],
-- 	[[ / _ `\  / __`\ / __`\/\ \/\ \\/\ \  / __` __`\  ]],
-- 	[[/\ \/\ \/\  __//\ \_\ \ \ \_/ |\ \ \/\ \/\ \/\ \ ]],
-- 	[[\ \_\ \_\ \____\ \____/\ \___/  \ \_\ \_\ \_\ \_\]],
-- 	[[ \/_/\/_/\/____/\/___/  \/__/    \/_/\/_/\/_/\/_/]],
-- 	[[                                                 ]],
-- }

local dashboard = require("alpha.themes.dashboard")
dashboard.section.header.val = {
  [[                                                ]],
  [[                                          _.oo. ]],
  [[                  _-u[[/;:,.         .odMMMMMM' ]],
  [[               .o888UU[[[/;:-.. .o@P^    MMM^   ]],
  [[              oN88888UU[[[/;::-..       dP^     ]],
  [[             dNMMNN888UU[[[/;:--..  .o@P^       ]],
  [[            ,MMMMMMN888UU[[/;::-..o@^           ]],
  [[            NNMMMNN888UU[[[/~.o@P^              ]],
  [[            888888888UU[[[/o@^-...              ]],
  [[           oI8888UU[[[/o@P^:--....              ]],
  [[        .@^  YUU[[[/o@^;::---....               ]],
  [[      oMP     ^/o@P^;:::---....                 ]],
  [[   .dMMM    .o@^ ^;::---.....                   ]],
  [[  dMMMMMMM@^`       `^^^^^                      ]],
  [[ YMMMUP^                                        ]],
  [[                                                ]],
  [[                                                ]],
  [[                                                ]],
}


dashboard.section.buttons.val = {
	dashboard.button("f", "  Find file", ":Telescope find_files <CR>"),
	dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
	dashboard.button("p", "  Find project", ":Telescope projects <CR>"),
	dashboard.button("r", "  Recently used files", ":Telescope oldfiles <CR>"),
	dashboard.button("t", "  Find text", ":Telescope live_grep <CR>"),
	dashboard.button("c", "  Configuration", ":e ~/.config/nvim/init.lua <CR>"),
	dashboard.button("q", "  Quit Neovim", ":qa<CR>"),
}

local function footer()
	-- NOTE: requires the fortune-mod package to work
	-- local handle = io.popen("fortune")
	-- local fortune = handle:read("*a")
	-- handle:close()
	-- return fortune
	return "stanoira's machine"
end

dashboard.section.footer.val = footer()

dashboard.section.footer.opts.hl = "Type"
dashboard.section.header.opts.hl = "Include"
dashboard.section.buttons.opts.hl = "Keyword"

dashboard.opts.opts.noautocmd = true
-- vim.cmd([[autocmd User AlphaReady echo 'ready']])
alpha.setup(dashboard.opts)
