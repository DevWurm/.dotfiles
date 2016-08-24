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
    call dein#add('chriskempson/base16-vim')
    call dein#add('vim-airline/vim-airline') " depends on powerline-fonts
    call dein#add('vim-airline/vim-airline-themes')

    " Default behavior
    call dein#add('DevWurm/autosession.vim')
    call dein#add('jiangmiao/auto-pairs')
    
    " Navigation and manipulation
    call dein#add('DevWurm/moveupdown.vim')
    call dein#add('tpope/vim-surround')

    " Files
    call dein#add('scrooloose/nerdtree')

    " Autocompletion
    call dein#add('Shougo/deoplete.nvim')
    call dein#add('SirVer/ultisnips') 
    call dein#add('honza/vim-snippets')

    " Filetype specifics
        " C / C++
        call dein#add('zchee/deoplete-clang', {'on_ft': ['c', 'cpp']}) " depends on 'python2-neovim' and 'clang'; hooks into deoplete
        call dein#add('octol/vim-cpp-enhanced-highlight', {'on_ft': ['c', 'cpp']})

        " CSS
        call dein#add('othree/csscomplete.vim', {'on_ft': ['css', 'html']})
        call dein#add('JulesWang/css.vim', {'on_ft': ['css', 'html']})

        " Dockerfile
        call dein#add('docker/docker' , {'rtp': '/contrib/syntax/vim/', 'on_ft': 'dockerfile'}) 

        " Git
        call dein#add('tpope/vim-git', {'on_ft': ['gitcommit', 'git', 'gitrebase', 'gitconfig', 'gitsendmail']})  

        " Haskell
        call dein#add('neovimhaskell/haskell-vim', {'on_ft': ['haskell', 'cabal']}) 
        call dein#add('eagletmt/neco-ghc', {'on_ft': 'haskell'}) " depends on ghc-mod; hooks into deoplete

        " HTML / Markup
        call dein#add('rstacruz/sparkup', {'on_ft': ['html', 'javascript', 'xml', 'markdown']})
        call dein#add('othree/html5.vim', {'on_ft': ['html', 'javascript', 'xml', 'markdown']})

        " Java
        call dein#add('artur-shaik/vim-javacomplete2', {'on_ft': 'java'}) " depends on JDK8; hooks into deoplete

        " JavaScript / Node
        call dein#add('moll/vim-node') " depends on JDK8; hooks into deoplete
	call dein#add('galooshi/vim-import-js', {'on_ft': ['html', 'javascript']}) " depends on globally installed import-js (npm)
        call dein#add('othree/yajs.vim', {'on_ft': ['html', 'javascript']})
        call dein#add('othree/es.next.syntax.vim', {'on_ft': ['html', 'javascript']})
        call dein#add('gavocanov/vim-js-indent', {'on_ft': ['html', 'javascript']})
        call dein#add('carlitux/deoplete-ternjs', {'on_ft': ['html', 'javascript']}) " depends on globally installed 'tern'; hooks into deoplete

        " JSON
        call dein#add('sheerun/vim-json', {'on_ft': ['json', 'javascript']}) 

        " JSX
        call dein#add('mxw/vim-jsx', {'on_ft': 'javascript'})

	" Markdown
	call dein#add('plasticboy/vim-markdown', {'on_ft': 'markdown'})

        " NGINX config
        call dein#add('nginx/nginx', {'rtp': '/contrib/vim'})

        " Postgres SQL
        call dein#add('exu/pgsql.vim')

        " PHP
        call dein#add('shawncplus/phpcomplete.vim', {'on_ft': 'php'}) 
        call dein#add('StanAngeloff/php.vim', {'on_ft': 'php'})

        " Python
        call dein#add('hdima/python-syntax', {'on_ft': 'python'})
        call dein#add('zchee/deoplete-jedi', {'on_ft': 'python'}) " depends on 'python-jedi, python2-jedi'; hooks into deoplete

        " Systemd files
        call dein#add('kurayama/systemd-vim-syntax')

        " TypeScript
        call dein#add('Quramy/tsuquyomi', {'on_ft': 'typescript'})
        call dein#add('leafgarland/typescript-vim', {'on_ft': 'typescript'})

        " Yaml
        call dein#add('stephpy/vim-yaml', {'on_ft': 'yaml'})
call dein#end()

