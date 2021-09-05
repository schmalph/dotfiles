local cmd = vim.cmd

-- rainbow parentheses
cmd("autocmd FileType * RainbowParentheses")

-- execute xrdb after writing to Xresources
cmd("autocmd BufWritePost Xresources !xrdb %")
