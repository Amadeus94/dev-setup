"Set compatibility to vim only (ie not VI)
set nocompatible
filetype off 

filetype plugin on 
set hidden

set t_Co=256

syntax on
set clipboard=unnamed		"Allow paste via p from computer

set number
set relativenumber
set wrap "automatically wrap text that extends beyond the screen length

set encoding=utf-8

set laststatus=2

"Call the .vimrc.plug file   - ie Load it into memory
if filereadable(expand("~/.vimrc.plug"))
	source ~/.vimrc.plug
endif



colorscheme codedark




set cursorcolumn



""""""""""""			Highlighting Settings			
"Note: I only use the terminal, and therefore need to set the settings on the
"ctermfg - Setting the foreground in terminal   
"ctermbg - Setting the background in terminal   
"cterm 	 - For additional properties

" Reference Char of values:
" 	Ps =0 -> blinking block
" 	Ps =1 -> blinking block (default)
" 	Ps =2 -> steady block
" 	Ps =3 -> blinking underline
" 	Ps =4 -> steady underline
" 	Ps =5 -> blinking bar (xterm)
" 	Ps =6 -> steadu bar (xterm)

"let &t_SI= "\e[6 q"	"Set how it appears when in Insert mode	
"let &t_EI= "\e[2 q"     "Set how it appears when in anything but the Insertmode ie exit mode 
"let &t_SR = "\e[2 q"

" Working version in WSL
" 	If the piece of code above is used instead of this block, there are
" 	gonna be issues with the hightlighting when you open vim. 
if &term == 'win32'
	let &t_ti.=" \e[1 q"
        let &t_SI.=" \e[6 q-- INSERT --"
	let &t_EI.=" \e[2 q"
	let &t_te.=" \e[0 q"
else
	let &t_ti.="\e[1 q"
	let &t_SI.="\e[6 q"
	let &t_EI.="\e[2 q"
	let &t_te.="\e[0 q"
endif

"Avoid a lag in version 8.x VIM when hitting a special key like insert or escape
"	 VIM automatically adds a 100ms delay on on any special key character
"	 when pressed in version 8.x 
"
set ttimeout   "time out for key code
set ttimeoutlen=0 "wait 0 ms after esc for special key



"NONExhaustive List of resources used to configure this vimrc file:
"	YT Video:  Intro to Vim Customization| Configuration and Plugins @2021 video by @Linode 
"		Helps setup VIM in a smart way separating the Plugin file from
"		vimrc file
"		Creates a basic setup with set numbers etc. 
"		Also very useful installation guide for plugins and so on
"
"
set tabstop=4


set showmatch " Shows matching brackets
set ruler " Always shows location in file (line#)
set smarttab " Autotabs for certain code
set shiftwidth=4

"Allows you to hit right to auto complete and left to avoid autocomplete

"inoremap <expr> <Down> pumvisible() ? "(C-n)" : "<Down>"
"inoremap <expr> <Up> pumvisible() ? "(C-p)" : "<Up>"

"inoremap <expr> <Right> pumvisible() ? "C-y)" : "<Right>"
"inoremap <expr> <CR> pumvisible() ? "(C-y)" : "<CR>"
"
"inoremap <expr> <Left> pumvisible() ? "(C-e)" : "<Left>"



" TODO:  			Enable Enter as selection in autocompleteme
