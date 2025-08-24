require("DePaWSiT.remap")
require("DePaWSiT.lazy")

vim.cmd.set("relativenumber")
vim.cmd.set("number")
vim.cmd.set("statusline=%{FugitiveStatusline()}\\ %f%m%r%h\\ %y\\ [%{&ff}]%=[%L::%p%%]\\ [line:%05l,col:%02v]")
vim.cmd.set("laststatus=3")
vim.cmd.set("updatetime=200")
vim.cmd.set("signcolumn=yes")


vim.opt.tabstop=2
vim.opt.shiftwidth=2
