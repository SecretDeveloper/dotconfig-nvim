local colorscheme = "habamax"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("Colorscheme " .. colorscheme .. " not found! Using fallback.")
  pcall(vim.cmd, "colorscheme habamax")
end
