let vimsettings = '~/.vim/settings'

for filename in split(globpath(vimsettings, '*.vim'), '\n')
  exe 'source' filename
endfor
