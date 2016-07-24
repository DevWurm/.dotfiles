" DevWurm's vimrc

" You want Vim, not vi. When Vim finds a vimrc, 'nocomptaible' is set anyway.
" We set it explicitely to make our position clear!
set nocompatible

" load files with all the vim settings
source ~/.config/nvim/config/tempfiles.vim
source ~/.config/nvim/config/plugins.vim
source ~/.config/nvim/config/colors.vim
source ~/.config/nvim/config/mappings.vim
source ~/.config/nvim/config/autocompletion.vim
source ~/.config/nvim/config/statusline.vim
source ~/.config/nvim/config/filetypes.vim

" basics configuration needs to be started at the end, otherwise vim loses
" syntax highliting during plugin management (srsly I have no idea why)
source ~/.config/nvim/config/basics.vim 

