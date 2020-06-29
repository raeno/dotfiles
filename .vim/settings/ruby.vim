" add gems tags to tags path
set tags+=gems.tags

" Command to convert old ruby Hash style to new one
" command ConvertHashStyle %s/:\([^=,'"]*\) =>/\1:/g
map <leader>hc :ConvertHashStyle

"" autoformat ruby files with rubocop
"map <leader>fc :RuboCop -a<CR>:ccl<CR>:w<CR>

"if !exists("g:rubyfmt_command")
    "let g:rubyfmt_command = "rubyfmt"
"endif

"function! RubyFmtCurrentFile()
  "let filename = expand('%:t:r')
  "execute "!" . g:rubyfmt_command . " " . filename
"endfunction

"nnoremap <leader>ff :call RubyFmtCurrentFile()<cr>
