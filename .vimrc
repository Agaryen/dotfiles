set nocompatible
set number
set cursorline
set updatetime=1000

:let mapleader=' ' 

filetype plugin on
filetype plugin indent on
syntax on

if &term =~ "xterm\\|rxvt"
  " insert mode
  " let &t_SI = "\<Esc>]12;orange\x7"
    let &t_SI .= "\<Esc>[5 q"
      " normal mode
  " let &t_EI = "\<Esc>]12;orange\x7"
    " silent !echo -ne "\033]12;orange\007"
  let &t_EI .= "\<Esc>[2 q"
  " reset cursor when vim exits
    " autocmd VimLeave * silent !echo -ne "\033]12;gray\007"
  " 1 or 0 -> blinking block
    " 3 -> blinking underscore
  " 5 -> blinking vertical bar
    " 6 -> solid vertical bar
endif

set listchars=tab:··
set list
set backspace=indent,eol,start
set ruler
set showcmd
set incsearch

set mouse=a
set ttymouse=urxvt

set nobackup

set t_Co=256

syntax enable
colorscheme gotham

call pathogen#infect()
call pathogen#helptags()
set laststatus=2

let g:delimitMate_expand_cr = 1

"AIRLINE

let g:airline_theme = "badwolf"
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

"KEYBINDINGS

nmap <Tab> ==
imap <Tab> <C-v><Tab>
imap [29~ 
map [29~ <>
vmap [29~ 

nmap <Leader>t :NERDTreeToggle<CR>
nmap <Leader><Left> :bp<CR>
nmap <Leader><Right> :bn<CR>
nmap <Leader><Up> :bf<CR>
nmap <Leader><Down> :bl<CR>
nmap <Leader>d :bd<CR>

let ext = expand("%:e")
if (ext == "h" || ext == "c" || ext == "hpp" || ext == "cpp")
   set softtabstop=2
   set shiftwidth=2
   set expandtab
   set cindent
   set cinoptions={1s,>2s,e-1s,^-1s,n-1s,:1s,p5,i4,(0,u0,W1s
   highlight OverLength ctermbg=red ctermfg=white
   match OverLength /\%80v.\+/
   highlight UnwantSpace ctermbg=red ctermfg=white
   2match UnwantSpace /\s\+\%#\@<!$/
else
	set tabstop=4
	set shiftwidth=4
	set noexpandtab
	set autoindent
endif

:command -nargs=* Make make <args> | cwindow 3

source ~/.vim/epitech.vim

:set listchars+=nbsp:#
set laststatus=2
