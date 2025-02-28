local Utils = require("core.utils")

local map = Utils.map
local Env = require("core.environment")
-- local sep = Env.is_windows() and '\\' or '/'  -- Define o separador com base no sistema operacional
local luadir = Env.luadir()
local NVIMHOME = Env.get_nvim_config_dir()
local MYVIMRC = Env.myvimrc()
local ZSHHOME = Env.zsh_home()

map("n", "<leader>ji", function()
  require("core.utils").jump_buffer(1)
end, {
  desc = "Jump forward in jumplist",
})

-- jump outside buffer
map("n", "<leader>jo", function()
  require("core.utils").jump_buffer(-1)
end, {
  desc = "Jump backward in jumplist",
})

-- map('n', '<CR>', function()
--   if not pcall(vim.cmd.normal, 'gf') then vim.cmd.normal('j0') end
-- end, { desc = ' gf or enter', noremap = true, silent = true })

-- map(
--   "n",
--   "<leader>bi",
--   function()
--     require("core.utils").jump_buffer_current(1)
--     vim.cmd("normal zz")
--   end,
--   {
--     desc = "Jump forward in current buffer",
--   }
-- )

-- map(
--   "n",
--   "<leader>o",
--   function()
--     require("core.utils").jump_buffer_current(-1)
--     vim.cmd("normal zz")
--   end,
--   { desc = "Jump backward in current buffer" }
-- )

map("n", "gl", "`.zz", {
  desc = " Jump to last change",
  silent = true,
})

map("n", "<Leader>v", function()
  vim.cmd("drop " .. MYVIMRC)
end, {
  desc = " edit init.lua",
})

map("n", "<leader>nk", function()
  local file = luadir .. "core/keymaps.lua"
  vim.cmd("drop " .. file)
end, {
  desc = " Edit keymaps",
  silent = true,
})

map("n", "<leader>na", function()
  local file = luadir .. "core/autocommands.lua"
  vim.cmd("drop " .. file)
end, {
  desc = " Edit autocommands",
  silent = true,
})

map("n", "<leader>nu", function()
  local file = luadir .. "core/utils.lua"
  vim.cmd("edit " .. file)
end, {
  desc = " Edit utils",
  silent = true,
})

map("n", "<leader>no", function()
  local file = luadir .. "core/options.lua"
  vim.cmd("edit " .. file)
end, {
  desc = " Edit options",
  silent = true,
})

map("n", "<leader>ne", function()
  local file = luadir .. "core/environment.lua"
  vim.cmd("edit " .. file)
end, {
  desc = " Edit environment file",
  silent = true,
})

map("n", "<leader>nm", "<cmd>AppendModeline<cr>", {
  desc = " Add modeline at EOF",
  silent = true,
})

map("n", "<Leader>zz", function()
  local zshrc = ZSHHOME .. "/.zshrc"
  vim.cmd("edit " .. zshrc)
end, {
  desc = "   Edit zshrc",
})

map("n", "<Leader>ze", function()
  local zshenv = ZSHHOME .. "/zshenv"
  vim.cmd("edit " .. zshenv)
end, {
  desc = "   Edit zshenv",
})

map("n", "<Leader>za", function()
  local zshaliases = ZSHHOME .. "/zsh-aliases"
  vim.cmd("edit " .. zshaliases)
end, {
  desc = "   Edit zsh aliases",
})

map("n", "<Leader>zf", function()
  local zshfunctions = ZSHHOME .. "/zsh-functions"
  vim.cmd("edit " .. zshfunctions)
end, {
  desc = "   Edit zsh functions",
})

-- source: https://www.vi-improved.org/vim-tips/
map("n", "j", [[v:count ? (v:count > 5 ? "m'" . v:count : '') . 'j' : 'gj']], {
  expr = true,
  desc = "Adds jumps greater than five lines to the jumplist",
})

map("n", "k", [[v:count ? (v:count > 5 ? "m'" . v:count : '') . 'k' : 'gk']], {
  expr = true,
  desc = "Add jumps greater than five lines to the jumplist",
})

map({ "n", "i", "v" }, "<c-s>", function()
  -- vim.cmd('Cls') -- personal command
  vim.cmd("update")
end, {
  desc = " Buffer :update",
  silent = true,
})

map("n", "<c-k>", function()
  local word = vim.fn.expand("<cword>")
  vim.cmd("help " .. word)
end, {
  desc = " help for current word",
})

map("n", "i", function()
  return Utils.is_empty_line() and "S" or "i"
end, {
  expr = true,
  desc = "properly indent on empty line when insert",
})

map("n", "a", function()
  return Utils.is_empty_line() and "S" or "a"
end, {
  expr = true,
  desc = "properly indent on empty line when insert",
})

-- map({ 'n', 'x', 'v' }, 'gy', '"+y', {
--   desc = 'Copy to clipboard',
-- })

map({ "n", "x", "v" }, "<leader>y", '"+y', {
  desc = "Copy to clipboard",
})

-- map('v', 'gp', '`[v`]', { desc = 'Reselect last pasted text' })

map("n", "<M-p>", '"+]P', {
  desc = " Paste clipboard",
})

map("n", "<leader>0", '"0P', {
  desc = " Paste reg0 (cursor after)",
  silent = true,
})

map("n", "<leader>P", '"0P', {
  desc = " Paste reg0 (cursor after)",
  silent = true,
})

map("n", "<leader>p", '"0p', {
  desc = " Paste reg0 (cursor before)",
  silent = true,
})

map("n", "<leader>+", '"+]P', {
  desc = " Paste clipboard",
})

map("i", "<M-p>", "<C-r><C-o>+", {
  desc = " Paste clipboard",
})

map("i", "<c-r>0", "<c-r><c-o>0", {
  desc = "Paste reg 0 and keep indentation",
})
map("i", "<c-r>+", "<c-r><c-o>+", { desc = "Paste reg + and keep indentation" })

map("i", ".", ".<c-g>u", { buffer = true, desc = ". Undo break" })
map("i", ",", ",<c-g>u", { buffer = true, desc = ", Undo break" })
map("i", "!", "!<c-g>u", { buffer = true, desc = "! Undo break" })
map("i", "?", "?<c-g>u", { buffer = true, desc = "? Undo break" })

map("n", '<leader>"', function()
  vim.cmd.normal('gsaiw"')
end, {
  desc = "add double quote",
  silent = true,
})

map("v", '<leader>"', function()
  vim.cmd.normal('gsa"')
end, {
  desc = " add double quote",
  silent = true,
})

map("n", "<leader>'", function()
  vim.cmd.normal("gsaiw'")
end, {
  desc = " add single quote",
  silent = true,
})

map("v", "<leader>'", function()
  vim.cmd.normal("gsa'")
end, {
  desc = " add single quote",
  silent = true,
})

map("n", "<leader>(", function()
  vim.cmd.normal("gsaiw(")
end, {
  desc = " add parentesis",
  silent = true,
})

map("n", "<leader>)", function()
  vim.cmd.normal("gsaiw(")
end, {
  desc = " add parentesis",
  silent = true,
})

map("n", "<leader>[", function()
  vim.cmd.normal("gsaiw[")
end, {
  desc = " add brackets",
  silent = true,
})

map("n", "<leader>]", function()
  vim.cmd.normal("gsaiw[")
end, {
  desc = " add brackets",
  silent = true,
})

map("n", "<leader>{", function()
  vim.cmd.normal("gsaiw{")
end, {
  desc = " add angled brackets",
  silent = true,
})

map("n", "<leader>}", function()
  vim.cmd.normal("gsaiw{")
end, {
  desc = " add angled brackets",
  silent = true,
})

map("n", "<leader>bf", "<cmd>lua vim.lsp.buf.format{ assync=true }<cr>", {
  desc = " Format buffer",
  silent = true,
})

map("n", "<leader>bs", function()
  Utils.squeeze_blank_lines()
end, {
  desc = " Squeeze blank lines",
})

map("n", "<leader>bd", "<cmd>bd<cr>", {
  desc = " Delete buffer",
  silent = true,
})

map("n", "<leader>bn", ":bnext<CR>", {
  desc = " Next buffer",
})

map("n", "<leader>bp", ":bprevious<CR>", {
  desc = " Previous buffer",
})

map("n", "<M-j>", "<cmd>cnext<cr>", {
  desc = "Jump next quickfix item",
  silent = true,
})

map("n", "<M-k>", "<cmd>cprev<cr>", {
  desc = "Jump previous quickfix item",
  silent = true,
})

map("n", "<leader>br", ":Telescope oldfiles<cr>", {
  desc = " Recent files",
  silent = true,
})

map("n", "<leader>bR", "<cmd>e!<cr>", {
  desc = " Revert buffer content",
  silent = true,
})

map("n", "<leader>by", "<cmd>%y+<cr>", {
  desc = " Buffer to clipboard",
  silent = true,
})

map("n", "<leader>be", "<cmd>%d<cr>", {
  desc = " Erase buffer content!",
  silent = true,
})

map("n", "<leader>bu", function()
  vim.cmd("Cls") -- personal command
  vim.cmd("update")
end, {
  desc = " Buffer :update",
  silent = true,
})

map("n", "<leader>bo", "<cmd>BufOnly<cr>", {
  desc = " Keep just current buffer",
  silent = true,
})

map("n", "<leader>bw", "<cmd>bw!<cr>", {
  desc = " Wipe buffer",
  silent = true,
})

map("x", "<<", "<gv", {
  desc = " Reselect after << on visual mode",
})

map("x", ">>", ">gv", {
  desc = " Reselect after >> on visual mode",
})

map("x", "<Right>", ">gv", {
  desc = " Reselect after >> on visual mode",
})

map("x", "<Left>", "<gv", {
  desc = " Reselect after << on visual mode",
})

local open_command = Env.is_windows() and "start" or Env.is_mac() and "open" or Env.is_wsl() and "wslview" or "xdg-open"

local function url_repo()
  local cursorword = vim.fn.expand("<cfile>")
  if string.find(cursorword, "^[a-zA-Z0-9-_.]*/[a-zA-Z0-9-_.]*$") then
    cursorword = "https://github.com/" .. cursorword
  end
  return cursorword or ""
end

map("n", "gx", function()
  vim.fn.jobstart({ open_command, url_repo() }, { detach = true })
end, {
  silent = true,
  desc = " xdg open link",
})

map(
  "n",
  "<F3>",
  '<cmd>lua require("core.utils").blockwise_clipboard()<CR>',
  { desc = "make clipboard register blockwise" }
)

-- Better block-wise operations on selected area
local blockwise_force = function(key)
  local c_v = vim.api.nvim_replace_termcodes("<C-v>", true, false, true)
  local keyseq = {
    I = { v = "<C-v>I", V = "<C-v>^o^I", [c_v] = "I" },
    A = { v = "<C-v>A", V = "<C-v>0o$A", [c_v] = "A" },
    gI = { v = "<C-v>0I", V = "<C-v>0o$I", [c_v] = "0I" },
  }
  return function()
    return keyseq[key][vim.fn.mode()]
  end
end
map("x", "I", blockwise_force("I"), { expr = true, noremap = true, desc = "Blockwise Insert" })
map("x", "gI", blockwise_force("gI"), { expr = true, noremap = true, desc = "Blockwise Insert" })
map("x", "A", blockwise_force("A"), { expr = true, noremap = true, desc = "Blockwise Append" })

map("n", "<leader>nl", function()
  if pcall(require, "noice") then
    require("noice").cmd("last")
  else
    vim.cmd("messages")
  end
end, {
  desc = " Show last noice message or fallback to :essages",
})

map("n", "<leader>nd", function()
  require("telescope.builtin").find_files({
    prompt_title = "DOTFILES",
    find_command = { "fd", "--no-ignore-vcs" },
    shorten_path = true,
    previewer = true,
    hidden = true,
    sorting_strategy = "ascending",
    -- cwd = vim.env.DOTFILES,
    search_dirs = { "~/.config", "~/.dotfiles" },
    layout_config = { height = 0.3 },
    layout_config = { width = 0.7 },
  })
end, {
  desc = " Edit dotfiles",
  silent = true,
})

map("n", "<leader>ng", function()
  require("telescope.builtin").live_grep({
    prompt_title = "Grep Wiki",
    -- shorten_path = true,
    previewer = true,
    hidden = true,
    sorting_strategy = "ascending",
    search_dirs = { "~/.dotfiles/wiki" },
    layout_strategy = "vertical", -- or 'horizontal'
    layout_config = {
      prompt_position = "top",
      height = 0.78,
      width = 0.68,
      preview_cutoff = 0,
      mirror = false,
      anchor = "CENTER",
      -- borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
    },
  })
end, {
  desc = " Grep wiki",
  silent = true,
})

map("n", "<Leader>np", function()
  local NVIMHOME = vim.env.NVIM_APPNAME or "nvim"
  require("telescope.builtin").find_files({
    prompt_title = "NVIM PLUGINS",
    find_command = { "fd", "--no-ignore-vcs" },
    shorten_path = true,
    previewer = true,
    hidden = true,
    sorting_strategy = "ascending",
    cwd = luadir .. "plugins",
    layout_strategy = "vertical", -- or 'horizontal'
    layout_config = {
      prompt_position = "top",
      height = 0.78,
      width = 0.68,
      preview_cutoff = 0,
      mirror = false,
      anchor = "CENTER",
    },
  })
end, {
  desc = " Edit nvim plugins",
  silent = true,
})

map(
  "n",
  "<Leader>np",
  -- "<cmd>lua require('core.files').nvim_plugins()<CR>",
  function()
    local NVIMHOME = vim.env.NVIM_APPNAME or "nvim"
    require("telescope.builtin").find_files({
      prompt_title = "NVIM PLUGINS",
      -- previewer = true,
      find_command = { "fd", "--no-ignore-vcs" },
      -- sorting_strategy = 'ascending',
      file_ignore_patterns = { ".git" },
      cwd = "~/.config/" .. NVIMHOME .. "/lua/plugins",
      hidden = true,
    })
  end,
  {
    desc = " Edit nvim plugins",
  }
)

map("n", "<leader>nw", function()
  require("telescope.builtin").find_files({
    prompt_title = "Wiki",
    find_command = { "fd", "--no-ignore-vcs" },
    shorten_path = true,
    previewer = true,
    hidden = true,
    sorting_strategy = "ascending",
    cwd = "~/.dotfiles/wiki",
    layout_strategy = "vertical", -- or 'horizontal'
    layout_config = {
      prompt_position = "top",
      height = 0.78,
      width = 0.68,
      preview_cutoff = 0, -- Ensures both preview and results are visible
      mirror = false, -- Helps with vertical centering
      anchor = "CENTER", -- Centers the window vertically
    },
  })
end, {
  desc = " Edit wiki",
  silent = true,
})

map("n", "<Leader>nc", function()
  local NVIMHOME = vim.env.NVIM_APPNAME or "nvim"
  require("telescope.builtin").find_files({
    prompt_title = "NVIM CORE",
    find_command = { "fd", "--no-ignore-vcs" },
    shorten_path = true,
    previewer = true,
    hidden = true,
    sorting_strategy = "ascending",
    cwd = "~/.config/" .. NVIMHOME .. "/lua/core",
    layout_strategy = "vertical", -- or 'horizontal'
    layout_config = {
      prompt_position = "top",
      height = 0.78,
      width = 0.68,
      preview_cutoff = 0,
      mirror = false,
      anchor = "CENTER",
    },
  })
end, {
  desc = " Edit nvim core",
  silent = true,
})

map( -- i am using telescope-frececncy
  "n",
  "<leader>nr",
  -- '<cmd>lua require("core.files").search_oldfiles()<cr>',
  "<cmd>Telescope oldfiles<cr>",
  {
    desc = " Recent files",
  }
)

map("n", "<leader>ca", "<cmd>UpdateAll<cr>", {
  desc = " Update Mason and Tresitter",
  silent = true,
})

map("n", "<leader>cd", "<cmd>ToggleDiagnostics<cr>", {
  desc = " Diagnostic toggle",
  silent = true,
})

map("n", "<leader>ce", vim.diagnostic.enable, {
  desc = " Diagnostic enable",
  silent = true,
})

map("n", "<leader>cf", vim.diagnostic.open_float, {
  desc = " Diagnostic open float",
  silent = true,
})

map("n", "<leader>cn", vim.diagnostic.goto_next, {
  desc = " Diagnostic next",
  silent = true,
})

map("n", "<leader>cp", vim.diagnostic.goto_prev, {
  desc = " Diagnostic prev",
  silent = true,
})

map("n", "<leader>cl", vim.diagnostic.setloclist, {
  desc = " Diagnostic list",
  silent = true,
})

map("n", "<Leader>cw", "*Ncgn", {
  desc = " Change current word",
  silent = true,
})

map("n", "<F2>", "*Ncgn", {
  desc = " Change current word",
  silent = true,
})

map("n", "<leader>tB", "<cmd>ToggleBackground<cr>", {
  desc = " Toggle background",
  silent = true,
})

map("n", "<leader>tl", function()
  Utils.toggle_list()
end, {
  desc = " Toggle list",
  silent = true,
})

map( -- https://bit.ly/4dQ4KlZ (reddit)
  "n",
  "<leader>ts",
  function()
    vim.opt.scrolloff = 999 - vim.o.scrolloff
    print("scrolloff: " .. vim .. scrolloff)
  end,
  {
    desc = " Toggle scrolloff",
    silent = true,
  }
)

map("v", "y", "ygv<Esc>", { desc = "Make visual yanks place the cursor back where started" })

map("n", "<leader>tS", function()
  vim.opt_local.spell = not vim.opt_local.spell:get()
  vim.opt_local.spelllang = "pt_br,en_us"
end, {
  desc = "Toggle local spell",
  silent = true,
})

map("n", "<leader>tp", function()
  Utils.toggle_autopairs()
end, {
  desc = " Toggle autopais",
  silent = true,
})

map("n", "<leader>tc", '<cmd>lua require("core.utils").ToggleConcealLevel()<cr>', {
  desc = " Toggle conceal level",
})

map("n", "<leader>tb", function()
  Utils.bipolar()
end, {
  desc = " Toggle boolean",
  silent = true,
})

map("n", "<leader>tm", function()
  Utils.toggle_modifiable()
end, { desc = " Toggle modifiable" })

map("n", "<leader>td", "<cmd>ToggleDiagnostics<cr>", {
  desc = " Toggle diagnostcs",
  silent = true,
})

map("n", "<M-Right>", "<cmd>lua vim.diagnostic.goto_next({float={source=true}})<cr>", {
  desc = "Jump to the next diagnostic",
  silent = true,
})

map("n", "<M-Left>", "<cmd>lua vim.diagnostic.goto_prev({float={source=true}})<cr>", {
  desc = "Jump to the prev diagnostic",
  silent = true,
})

-- have a look in the plugin inc-rename
map("n", "<leader>cr", "<cmd>lua vim.lsp.buf.rename()<cr>", {
  desc = " LSP identifier rename",
})

map("n", "<leader>cR", '<cmd>lua require("luasnip.loaders.from_lua").load({paths = "~/.config/nvim/luasnip/"})<cr>', {
  desc = " reload snippets",
  silent = false,
})

map("n", "<leader>cs", "<cmd>LuaSnipEdit<cr>", {
  desc = " Edit snippets",
})

map("n", "<c-m-s>", function()
  Utils.squeeze_blank_lines()
end, {
  desc = " Squeeze blank lines",
})

-- map('n', '<m-s>', function()
--   print('Alt-S pressed!')
--   Utils.squeeze_blank_lines()
-- end, {
--   desc = ' Squeeze blank lines',
-- })

-- Delete and change without yanking
map({ "n", "x" }, "<A-d>", '"_d', {
  desc = "Delete Without Yanking",
})

map({ "n", "x" }, "<A-c>", '"_c', {
  desc = "Change Without Yanking",
})

map("n", "Y", "yg_", {
  desc = " Copy until the end of line",
})

map("n", "<leader>cb", function()
  Utils.bipolar()
end, {
  desc = " Toggle boolean",
  silent = true,
})

map("n", "dd", function()
  return Utils.is_empty_line() and '"_dd' or "dd"
end, {
  expr = true,
  desc = " delete blank lines to black hole register",
})

map("n", "<leader>bx", function()
  require("core.utils").bd_or_quit()
end, {
  silent = false,
  desc = " bd or quit",
})

map("n", "<leader>w", "<cmd>bw!<cr>", {
  desc = "Wipe buffer",
  silent = true,
})

-- map('n', '<c-6>', '<c-^>\'"zz', {
--   silent = true,
--   noremap = true,
--   desc = 'Jump to alternate buffer',
-- })

map("n", "n", "nzz", { desc = "Keep cursor in the middle", silent = true })

map("n", "N", "Nzz", { desc = "Keep cursor in the middle", silent = true })

map(
  "n",
  "<leader>un",
  "<cmd>let [&nu, &rnu] = [!&rnu, &nu+&rnu==1]<cr>",
  { desc = "Toggle number and relative number" }
)

map("n", "<leader>uc", '<cmd>lua require("core.utils").ToggleConcealLevel()<cr>', {
  desc = " Toggle conceal level",
})

map("n", "<leader>ul", function()
  Utils.toggle_list()
end, {
  desc = " Toggle list",
  silent = true,
})

map("n", "<leader>um", function()
  local cmd = Utils.is_loaded("noice.lua") and "Noice" or "messages"
  vim.cmd(cmd)
end, {
  desc = " Show messages",
  silent = true,
})

map("n", "<leader>ud", "<cmd>ToggleDiagnostics<cr>", {
  desc = " Toggle diagnostcs",
  silent = true,
})

map("n", "<leader>uu", "<cmd>SwitchColor<cr>", {
  desc = " Switch color",
  silent = true,
})

-- -- if vim.lsp.inlay_hint then
--   map(
--     'n',
--     '<leader>uh',
--     function()
--       vim.lsp.inlay_hint(0, nil)
--     end,
--     {
--       desc = 'Toggle Inlay Hints',
--     }
--   )
-- -- end

map("n", "<leader>uh", function()
  vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled({ 0 }), { 0 })
end, {
  desc = "Toggle inlay hints",
})

map( -- the actual command is defined in commands.
  "n",
  "<leader>us",
  "<cmd>ToggleSpell<cr>",
  {
    desc = " Toggle spell",
  }
)

map("n", "<M-1>", "[s1z=", {
  desc = " Accept first spell suggestion",
  silent = true,
})

map("i", "<M-1>", function()
  return "<Esc>[s1z=gi"
end, {
  desc = "Fixpell",
  silent = true,
  expr = true,
})

-- imap <c-l> <c-g>u<Esc>[s1z=`]a<c-g>u
map("i", "<m-s>", "<c-g>u<Esc>[s1z=`]a<c-g>u", {
  desc = "desc",
  silent = true,
})

map("n", "<leader>ut", "<cmd>ChangeColor<cr>", {
  desc = "Change colors",
  silent = true,
})

-- cnoremap <expr> <c-n> wildmenumode() ? "\<c-n>" : "\<down>"
-- cnoremap <expo> <c-p> wild menu mode() ? "\<c-p>" : "\<up>"
map("c", "<c-j>", [[wildmenumode() ? "\<c-j>" : "\<down>"]], { expr = true })
map("c", "<c-k>", [[wildmenumode() ? "\<c-k>" : "\<up>"]], { expr = true })

map("c", "<c-a>", "<Home>", {
  desc = "cmd jump home",
  silent = true,
})

map("c", "<c-e>", "<End>", {
  desc = "cmd jump $",
  silent = true,
})

map("x", "il", "g_o_", {
  desc = "Inner line",
  silent = true,
})

map("o", "il", "<cmd>normal vil<cr>", {
  desc = "Inner line",
  silent = true,
})

map("x", "al", "$o0", {
  desc = "Arrownd line",
  silent = true,
})

map("o", "al", ":normal val<cr>", {
  desc = "Arrownd line",
  silent = true,
})

map("n", "<leader>ll", function()
  return require("lazy").home()
end, { desc = " Lazy home" })

map("n", "<leader>lu", function()
  return require("lazy").update()
end, {
  desc = " Lazy update",
})

map("n", "<leader>ls", function()
  return require("lazy").sync()
end, {
  desc = " Lazy sync",
})

map("n", "<leader>lL", function()
  return require("lazy").log()
end, { desc = " Lazy log" })

map("n", "<leader>lc", function()
  return require("lazy").clean()
end, {
  desc = " Lazy clean",
})

map("n", "<leader>lp", function()
  return require("lazy").profile()
end, {
  desc = " Lazy profile",
})

map("i", "<leader>cc", '<C-o>:lua require("core.utils").toggle_comment()<CR>', {
  noremap = true,
  silent = true,
  desc = "Toggle comment insert mode",
})

-- map("n", "<leader>cc", ':lua require("core.utils").toggle_comment()<CR>', {
--   noremap = true,
--   silent = true,
--   desc = "Toggle comment",
-- })

map("n", "<leader>li", "<cmd>LspInfo<cr>", {
  desc = " Show LSP info",
  silent = true,
})

-- Resize splits with arrow keys
map("n", "<C-Up>", "<cmd>resize +2<CR>")
map("n", "<C-Down>", "<cmd>resize -2<CR>")
map("n", "<C-Left>", "<cmd>vertical resize -2<CR>")
map("n", "<C-Right>", "<cmd>vertical resize +2<CR>")
