local M = {}

-- Get the system's OS name (e.g., "windows", "linux", "mac")
M.get_os = function()
  local sysname = vim.uv.os_uname().sysname:lower()
  local os_map = {
    ["windows_nt"] = "windows",
    ["darwin"] = "mac",
    ["linux"] = "linux",
  }
  return os_map[sysname] or "unknown"
end

-- OS check functions (use get_os once and cache the result)
local os_name = M.get_os()

M.is_wsl = function()
  if os_name == "linux" then
    local file = io.open("/proc/version", "r")
    if file then
      local content = file:read("*a")
      file:close()
      if content:match("WSL2") then
        return true
      end
    end
  end
  return false
end

M.is_termux = function()
  return vim.env.TERMUX_VERSION and true or false
end

M.is_linux = function()
  return os_name == "linux" and not M.is_wsl()
end
M.is_mac = function()
  return os_name == "mac"
end
M.is_windows = function()
  return os_name == "windows"
end

-- M.is_pure_linux = function()
--   return os_name == "linux" and not M.is_wsl()
-- end

-- Returns the Neovim configuration directory
M.get_nvim_config_dir = function()
  return vim.fn.stdpath("config")
end

-- Returns the Lua directory path within the Neovim config
M.luadir = function()
  return M.get_nvim_config_dir() .. "/lua/"
end

-- Returns the path to the init.vim or init.lua file
M.myvimrc = function()
  return vim.env.MYVIMRC or M.get_nvim_config_dir() .. "/init.lua"
end

-- Returns the home directory for Zsh, or fallback to HOME
M.zsh_home = function()
  return vim.env.ZDOTDIR or vim.env.HOME
end

return M
