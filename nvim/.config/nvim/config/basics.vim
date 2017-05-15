filetype plugin indent on  " Load plugins and indentions according to detected filetype.
syntax on                  " Enable syntax highlighting.

set relativenumber         " set linenumbers, wich are counted relative from the current line
set smartcase              " use case sensitive search when upper case letters are typed in the pattern, otherwhise don't
set background=dark        " let vim optimize the colors for a dark background

set autoindent             " Indent according to previous line.
set expandtab              " Use spaces instead of tabs.
set softtabstop =4         " Tab key indents by 4 spaces.
set shiftwidth  =4         " >> indents by 4 spaces.
set shiftround             " >> indents to next multiple of 'shiftwidth'.

set backspace =indent,eol,start " Make backspace work as you would expect (remove indentions, remove over linebreaks, remove over multiple insert entries).
set hidden                  " Switch between buffers without having to save first (enable hidden [loaded but not shown] buffers).
set display     =lastline   " Show as much as possible of the last line.

set showmode                " Show current mode in command-line.
set showcmd                 " Show already typed keys when more are expected.

set incsearch               " Highlight while searching with / or ?.
set hlsearch                " Keep matches highlighted.

set ttyfast                 " Faster redrawing.
set lazyredraw              " Only redraw when necessary.

set splitbelow              " Open new windows below the current window.
set splitright              " Open new windows right of the current window.


set wrapscan                " Searches wrap around end-of-file.
set report      =0          " Always report changed lines.
set synmaxcol   =300      " Only highlight the first 300 columns.

set foldmethod  =syntax     " create folds by syntactic structure
set nofoldenable            " don't fold by default

set list                    " Show non-printable characters.
if has('multi_byte') && &encoding ==# 'utf-8'
      let &listchars = 'tab:▸ ,extends:❯,precedes:❮,nbsp:±'
else
        let &listchars = 'tab:> ,extends:>,precedes:<,nbsp:.'
endif

set clipboard^=unnamedplus  " make the + register (system clipboard register) the default register for y/p (make vim 'clipboard' synchronus with system clipboard)

" jump to last cursor position in file (if it still exists)
autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif
