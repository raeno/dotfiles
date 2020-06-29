" map NERD tree to Ctrl-N
map <C-n> :NERDTreeToggle<CR>

" close vim if NERDTree window is only opened
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
