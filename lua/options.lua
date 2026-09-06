-- options

vim.g.mapleader       = " "

-- Indentation / Whitespace
vim.opt.tabstop       = 4
vim.opt.shiftwidth    = 4
vim.opt.expandtab     = true
vim.opt.breakindent   = true
vim.opt.list          = true
vim.opt.listchars     = { tab = "» ", trail = "·", nbsp = "␣" }

-- Interface
vim.opt.updatetime    = 250
vim.opt.termguicolors = true
vim.opt.number        = false
vim.opt.splitright    = true
vim.opt.splitbelow    = true
vim.opt.showmode      = false
vim.opt.mouse         = "a"
vim.opt.signcolumn    = "yes"
vim.opt.scrolloff     = 8
vim.opt.sidescrolloff = 8
vim.opt.cmdheight     = 1
vim.opt.cmdwinheight  = 10
vim.opt.wrap          = false
vim.opt.smoothscroll  = true
vim.opt.showcmd       = false
vim.opt.statusline    = string.format(
    " %s %s %s %s %s %s %s ",
    "%{v:lua.get_mode()}",
    "%f",
    "%m",
    "%=",
    "%{&fileencoding ? &fileencoding : &encoding}",
    "%{&fileformat == 'dos' ? 'CRLF' : (&fileformat == 'unix' ? 'LF' : '&fileformat')}",
    "%l:%c"
)
vim.cmd.colorscheme("default")

-- Search
vim.opt.incsearch   = true
vim.opt.ignorecase  = true
vim.opt.smartcase   = true

-- File handling
vim.opt.encoding    = "UTF-8"
vim.opt.backup      = false
vim.opt.writebackup = false
vim.opt.swapfile    = false
vim.opt.autoread    = true
vim.schedule(function()
    vim.opt.clipboard = vim.env.SSH_TTY and "" or "unnamedplus"
end)

function get_mode()
  local mode = vim.api.nvim_get_mode().mode
  if mode == "n" or mode == "no" then return "NOR" end
  if mode == "i" then return "INS" end
  if mode == "s" or mode == "S" or mode == "v" or mode == "V" or mode == "" then return "SEL" end
  if mode == "c" then return "CMD" end
  return mode
end
