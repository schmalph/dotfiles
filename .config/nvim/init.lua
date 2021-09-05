local cmd = vim.cmd
local fn = vim.fn

-- lua
require("install_packer")
require("plugins")
require("settings")
require("colorizer_plug")
require("mappings")
require("autocommands")

-- vim
local config = fn.stdpath("config")
cmd("source " .. config .. "/vim/completion.vim")
cmd("source " .. config .. "/vim/mappings.vim")
