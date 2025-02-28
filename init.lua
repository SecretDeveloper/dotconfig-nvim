vim.loader.enable()
-- vim.g.clipboard = {}
vim.deprecate = function() end

-- @param module_name
local function safeRequire(module)
  local success, loadedModule = pcall(require, module)
  if success then
    return loadedModule
  end
  print("Error loading " .. module)
end

safeRequire("core.options")
safeRequire("core.filetype")
safeRequire("core.bootstrap")
safeRequire("core.commands")
safeRequire("core.autocommands")
safeRequire("core.keymaps")
safeRequire("core.theme")
safeRequire("core.clipboard")
