require("DePaWSiT.remap")
require("DePaWSiT.lazy")
require("DePaWSiT.lsp_config")

vim.cmd.set("relativenumber")
vim.cmd.set("number")
vim.cmd.set("statusline=%{FugitiveStatusline()}\\ %f%m%r%h\\ %y\\ [%{&ff}]%=[%L::%p%%]\\ [line:%05l,col:%02v]")

vim.opt.tabstop=4
vim.opt.shiftwidth=4
