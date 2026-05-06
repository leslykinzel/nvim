return {
  "ej-shafran/compile-mode.nvim",
  version = "^5.0.0",
  branch = "latest",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = function()
    vim.g.compile_mode = {
      bang_expansion = true,
      default_command = "",
      focus_compilation_buffer = true,
      recompile_no_fail = true,
    }
  end,
  keys = {
    { "<F4>", "<CMD>Compile<CR>",   { desc = "Enter compile mode" } },
    { "<F5>", "<CMD>Recompile<CR>", { desc = "Use last compile command" } },
    -- { "<F6>", "", { desc = "" } },
    { "<F7>", "<CMD>PrevError<CR>", { desc = "Go to previous compile error" } },
    { "<F8>", "<CMD>NextError<CR>", { desc = "Go to next compile error" } },
  }
}
