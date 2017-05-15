" Put all temporary files under the same directory and create direcotry if it
" doesn't exist.
if exists('*mkdir') && !isdirectory($HOME.'/.config/nvim/files')
    call mkdir($HOME.'/.config/nvim/files', 'p')
endif
if exists('*mkdir') && !isdirectory($HOME.'/.config/nvim/files/backup')
    call mkdir($HOME.'/.config/nvim/files/backup', 'p')
endif
if exists('*mkdir') && !isdirectory($HOME.'/.config/nvim/files/swap')
    call mkdir($HOME.'/.config/nvim/files/swap', 'p')
endif
if exists('*mkdir') && !isdirectory($HOME.'/.config/nvim/files/undo')
    call mkdir($HOME.'/.config/nvim/files/undo', 'p')
endif
if exists('*mkdir') && !isdirectory($HOME.'/.config/nvim/files/info')
    call mkdir($HOME.'/.config/nvim/files/info', 'p')
endif

set backup
set backupdir   =$HOME/.config/nvim/files/backup/
set backupext   =-vimbackup
set backupskip  =
set directory   =$HOME/.config/nvim/files/swap//
set updatecount =100
set undofile
set undodir     =$HOME/.config/nvim/files/undo/
set viminfo     ='1000,n$HOME/.config/nvim/files/info/viminfo
