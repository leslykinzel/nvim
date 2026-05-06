-- lsp.ols

local function get_odin_root()
  local handle
  if vim.fn.has("win64") == 1 then
    handle = io.popen("odin root 2>nul")
  else
    handle = io.popen("odin root 2>/dev/null")
  end
  if handle == nil then
    return ""
  end
  local result = handle:read("*a")
  handle:close()
  return result
end

ODIN_ROOT = get_odin_root()

return {
  cmd = { "ols", "--stdio" },
  filetypes = { "odin" },
  root_markers = { ".git", "ols.json", "odinfmt.json" },
  settings = {
    collections = {
      { name = "core",   path = string.format("%s/core",   ODIN_ROOT) },
      { name = "base",   path = string.format("%s/base",   ODIN_ROOT) },
      { name = "vendor", path = string.format("%s/vendor", ODIN_ROOT) },
    }
  },
}
