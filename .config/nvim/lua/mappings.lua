local map = vim.api.nvim_set_keymap
local g = vim.g
local options = { noremap = true }
local cmd = vim.cmd

-- map the leader key
map('n', '<Space>', '', {})
g.mapleader = ' '

-- clear search highlighting
map('n', '//', ':nohlsearch<cr>', options)

-- comment out lines
map('n', '<leader>/', ':Commentary<cr>', options)
map('v', '<leader>/', ':Commentary<cr>', options)

-- toggle spell check
map('n', '<leader>s', ':setlocal spell! spelllang=en_us,de_20<cr>', options)

-- tabbing
map('v', '<', '<gv', options)
map('v', '>', '>gv', options)

-- move between splits
map('n', '<c-h>', '<c-w>h', options)
map('n', '<c-j>', '<c-w>j', options)
map('n', '<c-k>', '<c-w>k', options)
map('n', '<c-l>', '<c-w>l', options)

-- buffers
map('n', 'bl', ':buffers<cr>', options)
map('n', 'bn', ':bn<cr>', options)
map('n', 'bp', ':bp<cr>', options)

-- go to definition
map('n', 'gd', '<Plug>(coc-definition)', {silent = true})
map('n', 'gy', '<Plug>(coc-type-definition)', {silent = true})
map('n', 'gi', '<Plug>(coc-implementation)', {silent = true})
map('n', 'gr', '<Plug>(coc-references)', {silent = true})

-- rename symbol
map('n', '<leader>r', '<Plug>(coc-rename)', {})

-- typos
cmd("command WQ wq")
cmd("command Q q")
cmd("command W w")
cmd("command X x")
