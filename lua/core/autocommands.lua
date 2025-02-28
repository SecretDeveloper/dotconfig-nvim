local autocmd = vim.api.nvim_create_autocmd
local Utils = require("core.utils")

-- @returns a "clear = true" augroup
local function augroup(name)
  return vim.api.nvim_create_augroup("sergio-lazyvim_" .. name, { clear = true })
end

-- autocmd('InsertEnter', {
--   group = augroup('DisableConcealInsert'),
--   callback = function() vim.opt.conceallevel = 0 end,
--   desc = 'Disable conceal level in insert mode',
-- })
--
-- autocmd('InsertLeave', {
--   group = augroup('EnableConcealInNormal'),
--   callback = function() vim.opt.conceallevel = 2 end,
--   desc = 'Enable conceal level in normal mode',
-- })

autocmd("VimLeave", {
  pattern = "*",
  group = augroup("WriteShada"),
  command = "wshada",
  desc = "Save registers jumps marks and more",
})

-- source: https://www.reddit.com/r/neovim/comments/1ct2w2h/comment/l4bgvn1/
autocmd("CursorMoved", {
  group = augroup("auto-hls"),
  callback = function()
    if vim.v.hlsearch == 1 and vim.fn.searchcount().exact_match == 0 then
      vim.schedule(function()
        vim.cmd.nohlsearch()
      end)
    end
  end,
  desc = "Disable hls when focus change",
})

autocmd({ "BufEnter" }, {
  group = augroup("buf_enter"),
  pattern = { "" },
  callback = function()
    local buf_ft = vim.bo.filetype
    if buf_ft == "" or buf_ft == nil then
      vim.keymap.set("n", "<leader>q", "<cmd>close<cr>", {
        buffer = true,
        silent = true,
      })
    end
  end,
  desc = "Close unamed buffers with leader q",
})

autocmd("TextYankPost", {
  group = augroup("YankHighlight"),
  callback = function()
    vim.highlight.on_yank({
      higroup = "IncSearch",
      timeout = "700",
    })
  end,
  desc = "Highlight yanked text",
})

autocmd("BufEnter", {
  group = augroup("lsp_disable_diagnostic"),
  pattern = "*",
  command = "lua vim.diagnostic.disable()",
  desc = "Disable diagnostic for a while",
})

autocmd("CursorHold", {
  pattern = "*",
  group = augroup("FloatDiagnostic"),
  callback = function()
    vim.diagnostic.open_float({
      scope = "cursor",
      focusable = false,
    })
  end,
  desc = "Open Float Window for LSP Diagnostics",
})

-- autocmd('BufWritePre', {
--   pattern = {
--     '*.lua',
--     '*.md',
--     '*.py',
--     '*.rb',
--     '*.rs',
--     '*.sh',
--   },
--   command = 'silent! lua vim.lsp.buf.formatting_sync()',
--   group = augroup('FormatOnSave'),
--   desc = 'Auto-format Lua files on save',
-- })

-- autocmd('BufWritePost', {
--   group = augroup('formatonsave'),
--   pattern = {
--     '*.lua',
--     '*.py',
--     '*.rb',
--     '*.rs',
--     '*.ts',
--     '*.tsx',
--     '*.sh',
--     '*.md',
--   },
--   callback = function()
--     -- vim.lsp.buf.format({ assync = true })
--     Utils.preserve('sil keepj normal! gg=G')
--   end,
--   desc = 'Trigger format on save',
-- })

-- autocmd('InsertLeave', {
--   pattern = '*',
--   group = augroup('MatchRedundantSpaces'),
--   callback = function()
--     vim.cmd([[highlight RedundantSpaces ctermbg=red guibg=red]])
--     vim.cmd([[match RedundantSpaces /\s\+$]])
--   end,
--   desc = 'Higlight extra spaces',
-- })

-- -- augroup('clear_matches', { clear = true })
-- autocmd('InsertEnter', {
--   group = augroup('clear_matches'),
--   pattern = '*',
--   callback = function()
--     vim.cmd([[call clearmatches()]])
--     vim.cmd([[highlight RedundantSpaces ctermbg=red guibg=red]])
--     vim.cmd([[set nohls]])
--   end,
--   desc = 'Do not show extra spaces during typing',
-- })

autocmd({ "VimEnter", "CursorMoved" }, {
  group = augroup("Store_yank_pos"),
  pattern = "*",
  callback = function()
    cursor_pos = vim.fn.getpos(".")
  end,
  desc = "Stores cursor position when yanking",
})

autocmd("TextYankPost", {
  pattern = "*",
  group = augroup("yankrestoreposition"),
  callback = function()
    if vim.v.event.operator == "y" then
      vim.fn.setpos(".", cursor_pos)
    end
  end,
  desc = "Restores cursor position when yanking",
})

autocmd({ "VimResized" }, {
  group = augroup("vimresized"),
  pattern = "*",
  callback = function()
    vim.schedule(function()
      vim.cmd("tabdo wincmd =")
    end)
  end,
  desc = "Windows in equal size",
})

autocmd("FileType", {
  group = augroup("easy_quit"),
  pattern = {
    "",
    "checkhealth",
    "help",
    "lspinfo",
    "man",
    "notify",
    "nofile",
    "lspinfo",
    "oil",
    "qf",
  },
  callback = function(event)
    vim.bo[event.buf].buflisted = false
    vim.keymap.set("n", "q", "<cmd>q<cr>", { buffer = true, silent = true })
  end,
  desc = "Use q to faster quit",
})

autocmd({ "BufWritePre" }, {
  group = augroup("CreateDir"),
  pattern = "*",
  callback = function()
    local function auto_mkdir(dir, force)
      if not dir or string.len(dir) == 0 then
        return
      end
      local stats = vim.uv.fs_stat(dir)
      local is_directory = (stats and stats.type == "directory") or false
      if string.match(dir, "^%w%+://") or is_directory or string.match(dir, "^suda:") then
        return
      end
      if not force then
        vim.fn.inputsave()
        local result = vim.fn.input(string.format('"%s" does not exist. Create? [y/N]', dir), "")
        if string.len(result) == 0 then
          print("Canceled")
          return
        end
        vim.fn.inputrestore()
      end
      vim.fn.mkdir(dir, "p")
    end

    auto_mkdir(vim.fn.expand("<afile>:p:h"), vim.v.cmdbang)
  end,
  once = false,
})

autocmd("BufReadPost", {
  group = augroup("restore_position"),
  callback = function()
    local exclude = { "gitcommit" }
    local buf = vim.api.nvim_get_current_buf()
    if vim.tbl_contains(exclude, vim.bo[buf].filetype) then
      return
    end
    local mark = vim.api.nvim_buf_get_mark(0, '"')
    local lcount = vim.api.nvim_buf_line_count(0)
    if mark[1] > 0 and mark[1] <= lcount then
      pcall(vim.api.nvim_win_set_cursor, 0, mark)
      vim.api.nvim_feedkeys("zz", "n", true)
      -- require('core.utils').flash_cursorline()
    end
  end,
  desc = "Go to the last loc when opening a buffer",
})

-- autocmd({ 'BufWritePost' }, {
--   pattern = Utils.get_homedir() .. '/.dotfiles/dwm/config.h',
--   command = '!cd ~/.dotfiles/dwm; sudo make clean install',
--   group = augroup('AutoCompile'),
--   desc = 'DWM suckless utils',
-- })

autocmd({
  "FocusGained",
  "TermClose",
  "TermLeave",
  "WinEnter",
}, {
  group = augroup("checktime"),
  callback = function()
    if (vim.o.buftype ~= "nofile") or (vim.api.nvim_buf_get_name(0) ~= "[Command Line]") then
      vim.cmd("checktime")
    end
  end,
  desc = "Check if the file needs to be reloaded when it's changed",
})

autocmd({
  "BufEnter",
  "FocusGained",
  "InsertLeave",
  "CmdlineLeave",
  "WinEnter",
}, {
  pattern = "*",
  group = augroup("EnableRnuAndHls"),
  callback = function()
    if vim.o.nu and vim.api.nvim_get_mode().mode ~= "i" then
      vim.opt.relativenumber = true
    end
    vim.opt.hlsearch = true
  end,
  desc = "Enable relative number and enable hls in normal mode ",
})

autocmd({
  "BufLeave",
  "FocusLost",
  "InsertEnter",
  "CmdlineEnter",
  "WinLeave",
}, {
  pattern = "*",
  group = augroup("DisableRnuAndHls"),
  callback = function()
    if vim.o.nu then
      vim.opt.relativenumber = false
      vim.cmd("redraw")
    end
    vim.opt.hlsearch = false
  end,
  desc = "Disable relative number and hls in insert mode",
})

autocmd("CmdwinEnter", {
  group = augroup("CmdWindowEnter"),
  desc = "Make q close command history (q: and q?)",
  command = "nnoremap <silent><buffer><nowait> q :close<CR>",
})

autocmd("RecordingEnter", {
  group = augroup("record_action"),
  pattern = "*",
  command = "lua vim.opt_local.cmdheight = 1",
  desc = "Show recording status",
})

autocmd("RecordingLeave", {
  group = augroup("record_leave"),
  pattern = "*",
  command = "lua vim.opt_local.cmdheight = 0",
  desc = "Show recording status",
})

autocmd("BufWritePost", {
  group = augroup("make-executable"),
  pattern = { "*.sh", "*.zsh", "*.py" },
  -- command = [[!chmod +x %]],
  callback = function()
    local file = vim.fn.expand("%p")
    local status = require("core.utils").is_executable()
    if status ~= true then
      vim.fn.setfperm(file, "rwxr-x---")
    end
  end,
  desc = "Make files ended with *.sh, *.py executable",
})

autocmd("BufNewFile", {
  group = augroup("Skeleton"),
  pattern = {
    "*.lua",
    "*.py",
    "*.rb",
    "*.sh",
    "*.md",
  },
  callback = function()
    if vim.fn.line("$") ~= 1 or vim.fn.getline(1) ~= "" then
      return
    end
    -- Create another autocmd so it doesn't conflict
    -- with other plugins that like to insert text on file open
    -- require('cmp').setup({})
    vim.api.nvim_create_autocmd("VimEnter", {
      callback = function()
        Utils.insert_snippet_template()
      end,
    })
  end,
  desc = "Auto insert snippets",
})

autocmd({ "BufDelete", "BufWipeout" }, {
  group = augroup("UpdateShada"),
  desc = "Write to ShaDa when deleting/wiping out buffers",
  command = "wshada",
})

autocmd("RecordingEnter", {
  callback = function()
    local msg = string.format("Register:  %s", vim.fn.reg_recording())
    _MACRO_RECORDING_STATUS = true
    vim.notify(msg, vim.log.levels.INFO, {
      title = "Macro Recording",
      keep = function()
        return _MACRO_RECORDING_STATUS
      end,
    })
  end,
  group = augroup("NoiceMacroNotfication"),
})

autocmd("RecordingLeave", {
  callback = function()
    _MACRO_RECORDING_STATUS = false
    vim.notify("Success!", vim.log.levels.INFO, {
      title = "Macro Recording End",
      timeout = 2000,
    })
  end,
  group = augroup("NoiceMacroNotficationDismiss"),
})
