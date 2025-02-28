-- Bootstrap lazy.nvim
local lazy_repo_url = "https://github.com/folke/lazy.nvim.git"
local lazy_path = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.uv.fs_stat(lazy_path) then
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazy_repo_url, lazy_path })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazy_path)

-- Setup leader keys
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Performance settings
local nvim_home = vim.fn.stdpath("config")
local opts = {
  git = { log = { "--since=3 days ago" } },
  performance = {
    cache = {
      enabled = true,
    },

    pkg = {
      enabled = true,
      cache = vim.fn.stdpath("state") .. "/lazy/pkg-cache.lua",
      -- the first package source that is found for a plugin will be used.
      sources = {
        "lazy",
        "rockspec", -- will only be used when rocks.enabled is true
        "packspec",
      },
    },
    rocks = {
      enabled = true,
      root = vim.fn.stdpath("data") .. "/lazy-rocks",
      server = "https://nvim-neorocks.github.io/rocks-binaries/",
    },

    reset_packpath = true, -- reset the package path to improve startup time
    rtp = {
      disabled_plugins = {
        "2html_plugin",
        "editorconfig",
        "getscript",
        "getscriptPlugin",
        "gzip",
        "loaded_remote_plugins",
        "loaded_tutor_mode_plugin",
        "logipat",
        "netrwFileHandlers",
        "netrwPlugin",
        "rplugin",
        "rrhelper",
        "tarPlugin",
        "tohtml",
        "tutor",
        "vimball",
        "vimballPlugin",
        "zip",
        "zipPlugin",
      },
    },
  },
  checker = { enabled = false, notify = false },
  reload_on_compiled = true,
  reload_on_config_change = {
    nvim_home .. "/init.lua",
    nvim_home .. "/lua/**",
  },
  install = { colorscheme = { "habamax" } },
  log = {
    level = "error", -- Suppress most messages, only show errors
  },
  change_detection = {
    notify = false,
  },
}

-- Setup lazy.nvim
require("lazy").setup({
  spec = {
    { import = "plugins" },
  },
  ui = {
    border = "rounded",
    size = {
      width = 0.8,
      height = 0.8,
    },
  },
}, opts)
