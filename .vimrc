set noexpandtab
set shiftwidth=4
set tabstop=4
set softtabstop=4
set smartindent
set ruler
syntax on
set hlsearch
filetype plugin on

" When editing a file, always jump to the last cursor position
autocmd BufReadPost *
\ if ! exists("g:leave_my_cursor_position_alone") |
\ if line("'\"") > 0 && line ("'\"") <= line("$") |
\ exe "normal g'\"" |
\ endif |
\ endif

set nocompatible
set backspace=indent,eol,start
set number
set nowrap
set incsearch
set showcmd
set ignorecase
set visualbell
set cursorcolumn
set cursorline
set listchars=tab:>-,trail:⋅
set list
set ruler
" set mouse=a
set nobackup
set nowb
set noswapfile

" relative line numbers
set rnu

set t_Co=256

set background=dark
colorscheme wombat

syntax on

if has("multi_byte")
  if &termencoding == ""
    let &termencoding = &encoding
  endif
  set encoding=utf-8
  setglobal fileencoding=utf-8
  "setglobal bomb
  set fileencodings=ucs-bom,utf-8,latin1
endif

set ai "Auto indent
set si "Smart indent

" Remap VIM 0 to first non-blank character
map 0 ^

" Auto-indent xml files
au FileType xml setlocal equalprg=xmllint\ --format\ --recover\ -\ 2>/dev/null

" 80 char marker
set colorcolumn=100
highlight ColorColumn ctermbg=7 guibg=Black
