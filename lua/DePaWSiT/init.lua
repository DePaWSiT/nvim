require("DePaWSiT.lazy")

vim.cmd.set("relativenumber")
vim.cmd.set("number")
vim.cmd.set("statusline=%{FugitiveStatusline()}\\ %f%m%r%h\\ %y\\ [%{&ff}]%=[%L::%p%%]\\ [line:%05l,col:%02v]")
vim.cmd.set("laststatus=3")
vim.cmd.set("updatetime=200")
vim.cmd.set("signcolumn=yes")

-- delete some vim lsp keybinds to be used later
vim.keymap.del("n", "grn")
vim.keymap.del("x", "gra")
vim.keymap.del("n", "grr")
vim.keymap.del("n", "gri")
vim.keymap.del("n", "grt")
vim.keymap.del("n", "gO")
-- vim.keymap.del("n", "K")
