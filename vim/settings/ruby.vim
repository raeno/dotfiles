" add gems tags to tags path
set tags+=gems.tags

" Command to convert old ruby Hash style to new one
command ConvertHashStyle %s/:\([^=,'"]*\) =>/\1:/g
map <leader>hc :ConvertHashStyle

" autoformat ruby files with rubocop
map <leader>fc :RuboCop -a<CR>:ccl<CR>:w<CR>
