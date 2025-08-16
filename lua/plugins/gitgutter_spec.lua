return {
	"airblade/vim-gitgutter",
	event = "BufRead",
	init = function ()
		vim.cmd("set updatetime=200")
		vim.cmd("nmap ]h <Plug>(GitGutterNextHunk)")
		vim.cmd("nmap [h <Plug>(GitGutterPrevHunk)")
	end
}
