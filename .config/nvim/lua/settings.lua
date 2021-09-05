local o = vim.o
local wo = vim.wo
local bo = vim.bo
local cmd = vim.cmd
local g = vim.g

-- global options
o.clipboard = "unnamedplus"
o.smarttab = true
o.title = true
o.autoread = true
o.splitbelow = true
o.splitright = true
o.ignorecase = true
o.smartcase = true
o.hlsearch = true
o.incsearch = true
o.backspace = "indent,eol,start"
o.mouse = "a"
o.showmode = false
o.shortmess = "Ic"
o.pumheight = 10
o.cmdheight = 2
o.termguicolors = true
o.background = "dark"
o.hidden = true
o.backup = false
o.writebackup = false
o.updatetime = 300
o.tabstop = 4
o.shiftwidth = 4

-- window-local options
wo.linebreak = true
wo.conceallevel = 1
wo.signcolumn = "yes"
wo.number = true
wo.relativenumber = false

-- buffer-local options
bo.tabstop = 4
bo.shiftwidth = 4
bo.smartindent = true
bo.autoindent = true

-- color scheme
cmd "syntax enable"
cmd "syntax on"
g.gruvbox_italic=1
cmd "colorscheme gruvbox"

-- lightline
cmd "let g:lightline = {'colorscheme': 'wombat',}"

-- vimtex
g.tex_flavor = "latex"
g.vimtex_view_method = "zathura"
g.vimtex_quickfix_mode = 0
g.tex_conceal = "abdmg"
