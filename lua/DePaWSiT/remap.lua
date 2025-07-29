vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

RandomKeymap = "leaderText"

--plugin keybindings
FUGITIVE_GIT_STATUS = '<leader>gs'

--Harpoon
HARPOON_ADD_FILE = '<leader>ha'
HARPOON_TOGGLE_MENU = '<leader>hh'
HARPOON_NAV_NEXT = '<leader>hn'
HARPOON_NAV_PREV = '<leader>hp'
HARPOON_NAV_1 = '<leader>h1'
HARPOON_NAV_2 = '<leader>h2'
HARPOON_NAV_3 = '<leader>h3'
HARPOON_NAV_4 = '<leader>h4'

--Telescope
TELESCOPE_FIND_FILES = '<leader>fs'
TELESCOPE_GIT_SEARCH = '<leader> gf'
TELESCOPE_GREP_SEARCH = '<C-p>'

--Undotree
UNDOTREE_TOGGLE = '<leader>u'

--[==[
--UnListed Plugin controls
-- BLINK (autocomplete) CONTROLS
    ['<C-space>'] = { 'show', 'show_documentation', 'hide_documentation' },
    ['<C-e>'] = { 'hide', 'fallback' },
    
    ['<Tab>'] = {
      function(cmp)
        if cmp.snippet_active() then return cmp.accept()
        else return cmp.select_and_accept() end
      end,
      'snippet_forward',
      'fallback'
    },
    ['<S-Tab>'] = { 'snippet_backward', 'fallback' },
    
    ['<Up>'] = { 'select_prev', 'fallback' },
    ['<Down>'] = { 'select_next', 'fallback' },
    ['<C-p>'] = { 'select_prev', 'fallback_to_mappings' },
    ['<C-n>'] = { 'select_next', 'fallback_to_mappings' },
    
    ['<C-b>'] = { 'scroll_documentation_up', 'fallback' },
    ['<C-f>'] = { 'scroll_documentation_down', 'fallback' },
    
    ['<C-k>'] = { 'show_signature', 'hide_signature', 'fallback' }


-- FUGITIVE CONTROLS (:help fugitive)
-- :Git for regular git actions from the commandline
-- :Git with no option opens a summary window, use g? to show a couple of maps for actions
-- :Git commit and other commands that invoke the editor will use vim
-- :Git diff and other verbose, paginated commands have their output loaded in a temp buffer
-- :Git blame uses a temp buffer with maps, press enter to view where the line changed or g? to see other aviablabe maps
-- :Git mergetool and difftool load their changesets into the quickfix list
-- :Gdiffsplit 	for side by side comparison of the staged and working-tree version of a file
-- :Gwrite 	writes to both the working-tree and the staged version
-- :Gdelete 	removes the buffer and does a git rm on the staging
--
-- 
-- ]==]
