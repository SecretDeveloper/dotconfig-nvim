return {
  -- add any tools you want to have installed below
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "json-lsp",
        "lua-language-server",
        "omnisharp",
        "rust-analyzer",
        "shellcheck",
        "shfmt",
        "sqlfluff",
        "stylua",
        "yaml-language-server",
      },
    },
  },
}
