return {
  { "williamboman/mason.nvim", config = true },
  {
    "williamboman/mason-lspconfig.nvim",
    opts = {
      ensure_installed = {
        "pyright",
        "lua_ls",
      },
      ui = {
        check_outdated_packages_on_open = true,
      },
    },
  },
}
