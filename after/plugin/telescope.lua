local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>fs', builtin.find_files, {})
vim.keymap.set('n', '<leader>gs', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({search = vim.fn.input("grep > ")});
end)

