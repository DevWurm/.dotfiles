" configure deoplete (as autocompletion interface)
if dein#tap('deoplete.nvim') == 1
    let g:deoplete#enable_at_startup = 1
    if !exists('g:deoplete#omni#input_patterns')
        let g:deoplete#omni#input_patterns = {}
    endif

    " make deoplete use default omnicompletion
    let g:deoplete#omni#input_patterns.c = '.+'
    let g:deoplete#omni#input_patterns.cpp = '.+'
    let g:deoplete#omni#input_patterns.css = '.+'
    let g:deoplete#omni#input_patterns.haskell = '.+'
    let g:deoplete#omni#input_patterns.cabal = '.+'
    let g:deoplete#omni#input_patterns.html = '.+'
    let g:deoplete#omni#input_patterns.markdown = '.+'
    let g:deoplete#omni#input_patterns.xhtml = '.+'
    let g:deoplete#omni#input_patterns.java = '.+'
    let g:deoplete#omni#input_patterns.javascript = '.+'
    let g:deoplete#omni#input_patterns.xml = '.+'
    let g:deoplete#omni#input_patterns.php = '.+'
    let g:deoplete#omni#input_patterns.python = '.+'

    autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif    " close completion window when not needed anymore 

    " deoplete tab-complete
    inoremap <expr><tab> pumvisible() ? "\<down>" : "\<tab>"
    inoremap <expr><s-tab> pumvisible() ? "\<up>" : "\<tab>"
    " close completion popup when esc is pressed
    inoremap <expr><esc> pumvisible() ? "\<c-e>" : "\<esc>"
    " manually trigger completion popup when hidden or refresh if shown
    inoremap <silent><expr><c-@> !pumvisible() ? "\<c-x>\<c-f>" : ""
endif

" setup default completion
set omnifunc=syntaxcomplete#Complete

" setup autocompletion plugins
" deoplete-clang
if dein#tap('deoplete-clang')
    let g:deoplete#sources#clang#libclang_path = '/usr/lib/libclang.so'
    let g:deoplete#sources#clang#clang_header = '/usr/lib/clang'
endif

" vim-cpp-enhanced-highlight
if dein#tap('vim-cpp-enhanced-highlight')
    let g:cpp_class_scope_highlight = 1
endif

" neco-ghc
if dein#tap('neco-ghc')
    let g:necoghc_enable_detailed_browse = 1
endif

" setup snippets
if dein#tap('ultisnips')
    " UltiSnips Mappings 
    let g:UltiSnipsExpandTrigger = '<c-e>'
    let g:UltiSnipsJumpForwardTrigger = '<a-e>'
    let g:UltiSnipsJumpBackwardTrigger = '<a-E>'
    " Don't unmap my mappings
    let g:UltiSnipsMappingsToIgnore = [ "SmartTab", "SmartShiftTab" ]
endif
