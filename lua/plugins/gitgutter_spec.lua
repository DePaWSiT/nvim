return {
	"airblade/vim-gitgutter",
	event = "BufRead",
	init = function ()
		require('DePaWSiT.remap')
		vim.keymap.set("n", NEXT_HUNK, vim.cmd.GitGutterNextHunk) 
		vim.keymap.set("n", PREV_HUNK, vim.cmd.GitGutterPrevHunk)
	end,
}
