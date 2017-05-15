
" loading dein.vim plugin manager and adding plugins

if !isdirectory(expand('$HOME/.config/nvim/bundle'))
    echo 'Setting up plugin directory'
    call system(expand('mkdir -p $HOME/.config/nvim/bundle'))
endif

if !isdirectory(expand('$HOME/.config/nvim/bundle/dein.vim'))
    echo 'Setting up dein.vim'
    call system(expand('git clone https://github.com/Shougo/dein.vim.git $HOME/.config/nvim/bundle/dein.vim'))
endif

set runtimepath^=$HOME/.config/nvim/bundle/dein.vim

" adding plugins
call dein#begin(expand('$HOME/.config/nvim/bundle/'))
call dein#add(expand('$HOME/.config/nvim/bundle/dein.vim'))

    " Look 
    call dein#add('joshdick/onedark.vim')
    call dein#add('vim-airline/vim-airline') " depends on powerline-fonts
    call dein#add('vim-airline/vim-airline-themes')

    " Default behavior
    call dein#add('jiangmiao/auto-pairs')
    
    " Navigation and manipulation
    call dein#add('DevWurm/moveupdown.vim')
    call dein#add('tpope/vim-surround')

    " Files
    call dein#add('scrooloose/nerdtree')

    " Autocompletion
    call dein#add('Shougo/deoplete.nvim')

    " Filetype specifics
call dein#end()
