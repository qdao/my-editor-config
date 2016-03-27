set nocompatible
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin

set diffexpr=MyDiff()
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let eq = ''
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      let cmd = '""' . $VIMRUNTIME . '\diff"'
      let eq = '"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
endfunction

"my setting
set nu
syntax on
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set cindent
set nobackup
"set cursorline
""Enable mouse
"set mouse=a
"set selection=exclusive
"set selectmode=mouse,key
"set fdm=marker

set cursorcolumn
set cursorline
hi cursorline cterm=NONE ctermbg=white
hi cursorcolumn cterm=NONE ctermbg=white

colo ron
set guifont=Courier_New:h11:cANSI

if has("gui_running")
    "au GUIEnter * simalt ~X "auto make windows maximum size
    set guioptions-=m "hide menu bar
    set guioptions-=T "hide tool bar
    set guioptions-=L "hide left scroll bar
    set guioptions-=r "hide right scroll bar
    set guioptions-=b "hide bottom scroll bar
    "set showtabline=0 "hide tab bar

    set background=dark 
    let g:solarized_termcolors=256
    colorscheme solarized
endif

