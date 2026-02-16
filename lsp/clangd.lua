-- lsp/clangd

return {
  cmd = { "clangd" },
  filetypes = { "c", "h", "cpp", "hpp" },
  root_markers = { ".git" }
}
