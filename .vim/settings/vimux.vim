function! VimuxSlime()
  call VimuxSendText(@v)
  call VimuxSendKeys("Enter")
endfunction

" Send text to tmux ( for REPL )
vmap <LocalLeader>t "vy :call VimuxSlime()<CR>
nmap <LocalLeader>t vip<LocalLeader>t<CR>

map <Leader>vp :VimuxPromptCommand<CR>

let g:VimuxOrientation = "h"
