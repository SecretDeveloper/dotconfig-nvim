local vim = vim
local opt = vim.opt
local g = vim.g

vim.diagnostic.config({
  -- float = { border = 'rounded' },
  -- signs = true,
  signs = {
    text = {
      [vim.diagnostic.severity.ERROR] = "",
      [vim.diagnostic.severity.WARN] = "",
      [vim.diagnostic.severity.INFO] = "",
      [vim.diagnostic.severity.HINT] = "",
    },
    numhl = {
      [vim.diagnostic.severity.WARN] = "WarningMsg",
      [vim.diagnostic.severity.ERROR] = "ErrorMsg",
      [vim.diagnostic.severity.INFO] = "DiagnosticInfo",
      [vim.diagnostic.severity.HINT] = "DiagnosticHint",
    },
  },
})

local signs = {
  Error = "",
  Warn = "",
  Hint = "",
  Info = "",
}

for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.keymap.set("", "<space>", "<nop>", { desc = "space is only a leader key now" })

-- vim.g.python3_host_prog = vim.uv.os_homedir() .. '/.virtualenvs/neovim/bin/python'
vim.g.have_nerd_font = true

for _, provider in ipairs({ "node", "perl", "python3", "ruby" }) do
  vim.g["loaded_" .. provider .. "_provider"] = 0
end

local options = {
  virtualedit = "block",
  -- nrformats = { 'alpha', 'octal', 'hex' },
  ignorecase = true,
  spellsuggest = vim.opt.spellsuggest:append({ 8 }),
  smoothscroll = true,
  cursorcolumn = false,
  incsearch = true,
  inccommand = "nosplit",
  diffopt = "internal,filler,closeoff,indent-heuristic,linematch:60,algorithm:histogram",
  hidden = true,
  wildignorecase = true,
  smartcase = true,
  termguicolors = true,
  matchtime = 2,
  completeopt = { "menu", "preview", "menuone" },
  number = true,
  linebreak = true,
  joinspaces = false,
  pumblend = 15,
  ttimeoutlen = 10,
  -- path = vim.opt.path + '**',
  autochdir = true,
  isfname = vim.opt.isfname:append("@-@"),
  numberwidth = 2,
  expandtab = true,
  shiftwidth = 2,
  fileformat = "unix",
  fileformats = { "unix", "dos" },
  -- shada = "!,'100,<50,s100,h,r/tmp",
  shada = "!,'100,<50,s10,h",
  shadafile = vim.fn.stdpath("state") .. "/shada/main.shada",
  tabstop = 2,
  foldlevel = 99,
  foldcolumn = "1",
  undofile = true,
  showtabline = 0,
  splitbelow = true,
  splitright = true,
  mouse = "a",
  mousescroll = "ver:2,hor:6",
  scrolloff = 3,
  sidescrolloff = 3,
  listchars = {
    nbsp = "⦸",
    extends = "»",
    precedes = "«",
    eol = "↲",
    tab = "▸ ",
    trail = "•",
  },
  updatetime = 200,
  laststatus = 3,
  confirm = true,
  conceallevel = 0,
  cmdheight = 0,
}

for k, v in pairs(options) do
  vim.opt[k] = v
end

if vim.fn.executable("rg") then
  vim.opt.grepprg = "rg --vimgrep --no-heading --smart-case"
  vim.opt.grepformat = "%f:%l:%c:%m,%f:%l:%m"
end

if vim.fn.executable("prettier") then
  opt.formatprg = "prettier --stdin-filepath=%"
end

opt.formatoptions = "l"
opt.formatoptions = opt.formatoptions - "a" - "t" + "c" - "o" + "r" + "n" + "j" - "2"

opt.guicursor = {
  "n-v:block",
  "i-c-ci-ve:ver25",
  "r-cr:hor20",
  "o:hor50",
  "i:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor",
  "sm:block-blinkwait175-blinkoff150-blinkon175",
}

local window_options = {
  relativenumber = true,
  linebreak = true,
  cursorline = true,
  -- foldmethod = 'expr',
  -- foldexpr = "v:lua.require'lazyvim.util'.ui.foldexpr()",
}

for k, v in pairs(window_options) do
  vim.opt_local[k] = v
end
