return {
  "nvim-treesitter/nvim-treesitter",
  branch = "master",
  lazy = false,
  build = ":TSUpdate",
  opts = {
    ensure_installed = {
      "lua",
      "c",
      "rust",
      "vimdoc",
      "markdown",
      "bash",
    },
    highlight = {
      enable = true,
      additional_vim_regex_highlighting = false,
    }
  },
}
