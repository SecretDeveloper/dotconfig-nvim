return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "pastelnight",
    },
  },

  { import = "lazyvim.plugins" },
  { import = "lazyvim.plugins.extras" },
  { import = "lazyvim.plugins.extras.lang.typescript" },
  { import = "lazyvim.plugins.extras.lang.json" },
  --{ import = "lazyvim.plugins.extras.ui.mini-starter" },
}
