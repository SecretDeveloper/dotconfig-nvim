-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<leader><leader>", function()
  require("telescope.builtin").find_files({
    hidden = true, -- Show hidden files
    no_ignore = true, -- Do not respect .gitignore
    find_command = { "fd", "--type", "f", "--hidden", "--exclude", ".git" }, -- Exclude .git folders
  })
end, { desc = "[F]ind [F]iles", noremap = true, silent = true })

vim.keymap.set("n", "<leader>sg", function()
  require("telescope.builtin").live_grep({
    additional_args = function()
      return { "--hidden", "--glob", "!.git/*" }
    end,
  })
end, { desc = "[S]earch using [G]rep (Root Dir)", noremap = true, silent = true })
