vim.filetype.add({
  extension = {
    conf = "conf",
    config = "conf",
    md = "markdown",
    adoc = "markdown",
    mdx = "mdx",
    lua = "lua",
    sh = "sh",
    zsh = "sh",
    h = function(path, bufnr)
      if vim.fn.search("\\C^#include <[^>.]\\+>$", "nw") ~= 0 then
        return "cpp"
      end
      return "c"
    end,
  },

  pattern = {
    ["^\\.?(?:zsh(?:rc|env|-aliases)?)$"] = "sh",
  },

  filename = {
    ["TODO"] = "markdown",
    [".git/config"] = "gitconfig",
    -- ["~/.dotfiles/zsh/termux/zsh-aliases"] = "sh",
    ["~/.dotfiles/zsh/.zshrc"] = "sh",
    ["~/.zshrc"] = "sh",
    -- ["~/.config/mutt/muttrc"] = "muttrc",
    ["README$"] = function(path, bufnr)
      if string.find("#", vim.api.nvim_buf_get_lines(bufnr, 0, 1, true)) then
        return "markdown"
      end
      -- no return means the filetype won't be set and to try the next method
    end,
  },
})
