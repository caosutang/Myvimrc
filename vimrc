
" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvm/plugged

" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')
 Plug 'jmcomets/vim-pony'
 Plug 'morhetz/gruvbox'
 Plug 'vim-scripts/indentpython.vim'
 Plug 'dracula/vim'
 Plug 'mattn/emmet-vim'
 Plug 'scrooloose/nerdtree'
 Plug 'itchyny/lightline.vim'
 Plug 'noahfrederick/vim-laravel'
 Plug 'shawncplus/phpcomplete.vim' 
 Plug 'altercation/solarized'
 Plug 'joonty/vdebug'
 Plug 'shougo/vimproc.vim'
 Plug 'StanAngeloff/php.vim'
 Plug 'shougo/unite.vim'
 Plug 'austintaylor/vim-commaobject' 
 "- (,) for manipulating comma-delimited lists ,da delecte after ',', ci
 "delete between keep ',' "
 Plug 'othree/html5.vim'
 "HTML5 + inline SVG omnicomplete function, indent and syntax for Vim. Based on the default htmlcomplete.vim.
 Plug 'ddollar/nerdcommenter'
 Plug 'tpope/vim-repeat'
 "using the . command after a plugin map
 Plug 'tpope/vim-surround'
 " about surroundings": parentheses, brackets, quotes, XML tags, and more
 " cs"',ds",ysiw], yss), S<p class="important">
 Plug 'airblade/vim-gitgutter'
 " shows a git diff in the 'gutter' (sign column)
 Plug 'tpope/vim-fugitive'
 " Git wrapper of all time. :Gedit, :Gsplit, :Gvsplit, :Gtabedit, :Gstatus, :Gcommit %, :Gblame, :Gmove, :Gdelete, :Ggrep, :Gread, :Gbrowse
 " :Git for running any arbitrary command, and Git! to open the output of a command in a temp file.
 Plug 'borissov/vim-mysql-suggestions'
 " show suggestions from MySQL database structure.
 " show suggestions from MySQL database structure.
 " <C-x> Show completion menu 
 Plug 'kien/ctrlp.vim'
 " Full path fuzzy file, buffer, mru, tag, ... finder for Vim.
 Plug 'godlygeek/tabular'
 " Aligning text :Tab /=
 Plug 'vim-scripts/matchit.zip'
 " Django plugin"
 Plug 'davidhalter/jedi-vim'
 Plug 'Valloric/YouCompleteMe'
 Plug 'sirver/ultisnips'
 Plug 'sukima/xmledit'
 Plug 'kevinw/pyflakes-vim'
Plug 'honza/vim-snippets'
call plug#end()	
 " Set theme 
 syntax on 
let g:UltiSnipsSnippetDirectories=["UltiSnips"]
let b:surround_{char2nr("v")} = "{{ \r }}"
let b:surround_{char2nr("{")} = "{{ \r }}"
let b:surround_{char2nr("%")} = "{% \r %}"
let b:surround_{char2nr("b")} = "{% block \1block name: \1 %}\r{% endblock \1\1 %}"
let b:surround_{char2nr("i")} = "{% if \1condition: \1 %}\r{% endif %}"
let b:surround_{char2nr("w")} = "{% with \1with: \1 %}\r{% endwith %}"
let b:surround_{char2nr("f")} = "{% for \1for loop: \1 %}\r{% endfor %}"
let b:surround_{char2nr("c")} = "{% comment %}\r{% endcomment %}"
 set runtimepath+=~/.vim/ultisnips_rep
 let g:UltiSnipsExpandTrigger       = "<c-j>"
 let g:UltiSnipsJumpForwardTrigger  = "<c-j>"
 let g:UltiSnipsJumpBackwardTrigger = "<c-p>"
 let g:UltiSnipsListSnippets        = "<c-k>" "List possible snippets based on current file
 let g:ycm_collect_identifiers_from_tags_files = 1 " Let YCM read tags from Ctags file
 let g:ycm_use_ultisnips_completer = 1 " Default 1, just ensure
 let g:ycm_seed_identifiers_with_syntax = 1 " Completion for programming language's keyword
 let g:ycm_complete_in_comments = 1 " Completion in comments
 let g:ycm_complete_in_strings = 1 " Completion in string
 set t_Co=256
 set number
 colorscheme dracula
 set linespace=4
 set showcmd
 set showmode
 set autoindent
 set modeline
 set ruler
 set smartindent
 autocmd FileType python set sw=4
 autocmd FileType python set ts=4
 autocmd FileType python set sts=4
 " Set cursor column and row
 autocmd WinEnter * setlocal cursorline
 autocmd WinLeave * setlocal nocursorline
 set cursorcolumn
 highlight Colorcolumn guibg=lightgray
 set cursorline
 hi CursorLine cterm=bold term=bold guibg=lightgray 

 " Set nerdtree with ctrl+ C
 map <C-z> :NERDTreeToggle<CR>
 nnoremap <Up> :echomsg "use k"<cr>
 nnoremap <Down> :echomsg "use j"<cr>
 nnoremap <Left> :echomsg "use h"<cr>
 nnoremap <Right> :echomsg "use l"<cr>
 " Set info for html5
 " Disable event-handler attributes support:
let g:html5_event_handler_attributes_complete = 0
 " Disable RDFa attributes support:
let g:html5_rdfa_attributes_complete = 0
 " Disable microdata attributes support:
let g:html5_microdata_attributes_complete = 0
 " Disable WAI-ARIA attribute support:
let g:html5_aria_attributes_complete = 0
 
 " Set vim-mysql
     " File Types you want to use suggestions
autocmd FileType php setlocal completefunc=MySQLCompleteFunction
autocmd FileType javascript setlocal completefunc=MySQLCompleteFunction
    " Be careful and don't publish in Github 
let g:database_host = "MySQL Host"
let g:database_password = "MySQL Password"
let g:database_database = "MySQL Database Name"
let g:database_user = "MySQL User"
let g:SuperTabDefaultCompletionType = "context"
let g:SuperTabCompletionContexts = ['MySQLCompleteSuperTabContext']
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
 
let g:phpcomplete_add_class_extensions   = ['mongo']
let g:phpcomplete_add_function_extensions = ['mongo']
let g:phpcd_php_cli_executable            = 'php7.0'
let g:phpcomplete_parse_docblock_comments = 1
let mapleader                             = ','
let php_html_load                         = 0
let php_html_in_heredoc                   = 0
let php_html_in_nowdoc                    = 0
let php_sql_query                         = 0
let php_sql_heredoc                       = 0
let php_sql_nowdoc                        = 0
set tags+=tags.vendor
autocmd BufWritePost *.php silent execute "![ -d src ] && ctags src"
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
let g:SuperTabDefaultCompletionType = "<c-x><c-o>"" 
set tabstop=2 softtabstop=0 expandtab shiftwidth=2 smarttab
" Move between window
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-l> <C-W>l

set clipboard=unnamedplus
" Map Esc to jj
imap jj <Esc>
nmap <silent> <F3> :NERDTreeToggle<CR>

set rtp+=/usr/share/powerline/bindings/vim/
set laststatus=2
set t_Co=256
set rtp+=/usr/share/powerline/bindings/vim/
set laststatus=2
set t_Co=256
