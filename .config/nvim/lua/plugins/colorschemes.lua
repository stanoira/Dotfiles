return {
  {
    "folke/tokyonight.nvim",
    -- lazy = false, -- make sure we load this during startup if it is your main colorscheme
    -- priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      -- load the colorscheme here
      vim.cmd([[colorscheme tokyonight-night]])
    end,
  },
  {
    "catppuccin/nvim",
    -- lazy = false,
    -- priority = 1000,
    config = function()
      vim.cmd([[colorscheme catppuccin-mocha]])
    end,
  },
  {
    lazy = false,
    priority = 1000,
    "rose-pine/neovim",
    config = function()
      vim.cmd([[colorscheme rose-pine]])
    end,
  },
  {
    "olivercederborg/poimandres.nvim",
    -- lazy = false,
    -- priority = 1000,
    config = function()
      vim.cmd([[colorscheme poimandres]])
    end,
  },
}
