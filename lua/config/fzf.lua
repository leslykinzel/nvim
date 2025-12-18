return {
  "junegunn/fzf.vim",
  dependencies = { "junegunn/fzf" },
  init = function()
    vim.env.FZF_DEFAULT_OPTS = "--no-preview"
    vim.g.fzf_layout = { window = "enew" }
    vim.g.fzf_preview_window = {}
  end,
  keys = {
    { "<leader>ff", "<CMD>Files<CR>",   { desc = "Search files" } },
    { "<leader>fb", "<CMD>Buffers<CR>", { desc = "Search buffers" } },
    { "<leader>rg", "<CMD>rg<CR>",      { desc = "Ripgrep in cwd" } },
  }
}
