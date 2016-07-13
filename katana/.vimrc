"vim:fdm=marker
set nocompatible              " be iMproved, required
filetype off                  " required

" Plugins install   {{{*  
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
"""""""""""""""""""""""init of Vundle plugins"""""""""""
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive' " plugin on GitHub repo
" All of your Plugins must be added before the following line

Plugin 'qpkorr/vim-bufkill' " kill/delete buffer without close window
Bundle 'Shougo/vimproc'
Bundle 'm2mdas/phpcomplete-extended'
Bundle 'stephpy/vim-php-cs-fixer'
Plugin 'Chiel92/vim-autoformat'
Plugin 'KabbAmine/vCoolor.vim'      " color picker:
Plugin 'MarcWeber/vim-addon-mw-utils'   "necessary for snippets
Plugin 'SirVer/ultisnips'
Plugin 'Valloric/YouCompleteMe'    "autocmplete plugin
" Plugin 'Townk/vim-autoclose'    "autoclose plugin
" Plugin 'Xuyuanp/nerdtree-git-plugin'   "git plugin for nerdtree
Plugin 'airblade/vim-gitgutter'
Plugin 'ap/vim-css-color'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'godlygeek/tabular' " tabular data organizer
Plugin 'jeffkreeftmeijer/vim-numbertoggle'
" Plugin 'jistr/vim-nerdtree-tabs'  " open nerdtree in tabs
Plugin 'joonty/vdebug'  "debugger
Plugin 'jszakmeister/vim-togglecursor'        "detector de cursor insert mode
Plugin 'majutsushi/tagbar'                "tagbar navigation
Plugin 'marijnh/tern_for_vim' "javascript tag corrector
Plugin 'mattn/emmet-vim'        "emmet plugin    
Plugin 'matze/vim-move'    " move blocks/lines
Plugin 'mbbill/undotree' " undo manager     
Plugin 'mileszs/ack.vim'
Plugin 'pangloss/vim-javascript'        "javascript compatibility plugin
Plugin 'roblillack/vim-bufferlist'
Plugin 'scrooloose/nerdtree' "tree file explorer
Plugin 'scrooloose/syntastic'    "code syntax review
Plugin 'shawncplus/phpcomplete.vim'  " autocompletion for php
Plugin 'shougo/unite.vim'  "fuzzy navigator
Plugin 'tamnil/vim-browser-reload-linux' " Session manager 
Plugin 'terryma/vim-multiple-cursors'  "debuger
Plugin 'tobys/pdv'    "PDV para phpDocumentor
Plugin 'tobys/vmustache'    "PDV para phpDocumentor
Plugin 'tomtom/tlib_vim'          "necessary for snippets
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround' " plugin for surrounding in tags
" Plugin 'tyok/nerdtree-ack'  "plugin nerdtree + ack
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-scripts/tComment'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-session' " Session manager     
Plugin 'easymotion/vim-easymotion'  " move with shortcuts
Plugin 'beloglazov/vim-online-thesaurus'
" Plugin 'ctrlpvim/ctrlp.vim'
" Plugin 'garbas/vim-snipmate'
" Plugin 'wincent/Command-T'
" Plugin 'yuratomo/w3m.vim'
" Plugin '2072/PHP-Indenting-for-VIm'
" Plugin 'maksimr/vim-jsbeautify'
" Plugin 'joonty/vim-phpqa.git'
Plugin 'tamnil/vim-snippets' " substituido por /tamnil/vimcustom-snippets no diretorio vim/snippets
" Plugin 'einars/js-beautify' 
" Plugin  'vim-scripts/highlight.vim'


" filetype plugin on
""""""""""""""""""""""end of vundle plugins"""""""""""""""""""""""""""
call vundle#end()            " required
            
""""""""""""""""""""""plugins pathogen installation begin""""""""""""""""""""""""""
execute pathogen#infect()
"  }}} end of plugins

" Environment variables  {{{**************************************************

let g:airline#extensions#tabline#enabled = 1
let NERDTreeShowLineNumbers=1
let g:airline_powerline_fonts = 1

runtime macros/matchit.vim  "match angle brackets(xml)
set undodir=~/.vim/tmp/undo//
set undofile   " enable undo
set backupdir=~/.vim/tmp/backup//
set backup  "enable backups
set laststatus=2
set directory=~/.vim/tmp/swp//
set t_Co=256
set tabstop=4   " size of a hard tab stop
set shiftwidth=4 " size of an indent
" a combination of spaces and tabs are used to simulate tab stops at a width
" other than the (hard)tab stop
set smarttab " make "tab" insert indents instead of tabs at the beginning of a line
set expandtab  " always uses spaces instead of tab characters
set softtabstop=4
set encoding=utf-8
set title                   " Show the filename in the window title bar.
set showcmd                 " show partial command on last line of screen.
set showmatch               " show matching parenthesis
set splitbelow splitright   " how to split new windows.
set scrolloff=3             " Start scrolling n lines before horizontal border of window.
set sidescrolloff=7         " Start scrolling n chars before end of screen.
set sidescroll=1            " The minimal number of columns to scroll horizontally.

set mouse=a " set mouse value
set autoread "reload a file when modified externally
let g:editorconfig_Beautifier= '~/.vim/.editorconfig'
" LustyExplorer hide messages error:
set hidden
set nosol  "not go to start of line in 'G'
let g:snips_author = 'Tamnil Saito Junior - www.tamnil.com'

" --- history / file handling ---
set history=999             " Increase history (default = 20)
set undolevels=999          " Moar undo (default=100)
set autoread                " reload files if changed externally

" --- search / regexp ---
set gdefault                " RegExp global by default
set magic                   " Enable extended regexes.
set hlsearch                " highlight searches
set incsearch               " show the `best match so far' astyped
set ignorecase smartcase    " make searches case-insensitive, unless they contain upper-case letters
set backspace=indent,eol,start  " allow backspacing over everything.
" set esckeys                     " Allow cursor keys in insert mode.
set cursorline              " Highlight current line

let g:BufferListWidth = 25
let g:BufferListMaxWidth = 50
"color options 
" hi BufferSelected term=reverse ctermfg=white ctermbg=red cterm=bold
" hi BufferNormal term=NONE ctermfg=black ctermbg=darkcyan cterm=NONE
" hi NonText ctermfg=7 guifg=black guibg=gray20

""""""""""""""""""""colors and desktop"""""""""""""""""""""""""""""""""""""
colorscheme monokai
" sessions states
let g:session_autoload = 'yes'
let g:session_autosave = 'yes'


set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_check_on_open = 1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_wq = 0
autocmd VimEnter * SyntasticToggleMode " disable syntastic check by default 
" let g:syntastic_php_checkers = ["php" ]
let g:syntastic_php_checkers = ["php","phpmd","phpcs"]
let g:syntastic_php_phpcs_args='--standard=PSR2 -n --tab-width=0'

set clipboard^=unnamed  " set clipboard on GUI
let g:ycm_server_python_interpreter = '/usr/bin/python2.7'

autocmd FileType * set formatoptions-=c formatoptions-=r formatoptions-=o " remove autocomment

""""""""""""""""""""code fixers"""""""""""
" If php-cs-fixer is in $PATH, you don't need to define line below
" let g:php_cs_fixer_path = "~/php-cs-fixer.phar" " define the path to the php-cs-fixer.phar
let g:php_cs_fixer_level = "psr2"              " which level ?
let g:php_cs_fixer_config = "default"             " configuration
"let g:php_cs_fixer_config_file = '.php_cs'       " configuration file
let g:php_cs_fixer_php_path = "php"               " Path to PHP
" If you want to define specific fixers:
"let g:php_cs_fixer_fixers_list = "linefeed,short_tag,indentation"
let g:php_cs_fixer_enable_default_mapping = 1     " Enable the mapping by default (<leader>pcd)
let g:php_cs_fixer_dry_run = 0                    " Call command with dry-run option
let g:php_cs_fixer_verbose = 0                    " Return the output of command if 1, else an inline information.

let php_folding = 1        "Set PHP folding of classes and functions.
let php_htmlInStrings = 1  "Syntax highlight HTML code inside PHP strings.
let php_sql_query = 1      "Syntax highlight SQL code inside PHP strings.
let php_noShortTags = 1    "Disable PHP short tags.


set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
"let g:ctrlp_custom_ignore = {'dir':  '\v[\/]\.(git|hg|svn)$','file': '\v\.(exe|so|dll)$','link': 'some_bad_symbolic_links' }
" Use a custom file listing command:
" let g:ctrlp_user_command = 'find %s -type f'        " MacOSX/Linux  Ctrlp custom (trocado por unite \\f)

"""""""""""""""""""""""""highlight search"""""""""""""""""""""""""""""""
set incsearch
set hlsearch
set ignorecase
set smartcase
""""""""""""""""""""""""""" Enable Code Folding"""""""""""""""""""""""""""'

" set foldmethod=syntax
" set foldmethod=marker
set foldmethod=indent

"""""""""""""""""""""""""""" line numbering """"""""""""""""""""""""""""""""
set number
au FocusLost * :set number
au FocusGained * :set relativenumber

" let php_folding=1
set nofoldenable
set showcmd

set viminfo='1000,f1,<250
""""""""""""""""""""""""""   File Type detection"""""""""""""""""""""""
filetype on
filetype plugin on
filetype plugin indent on    " required

filetype plugin on
set omnifunc=syntaxcomplete#Complete
au FileType php setl ofu=phpcomplete#CompletePHP
au FileType ruby,eruby setl ofu=rubycomplete#Complete
au FileType html,xhtml setl ofu=htmlcomplete#CompleteTags
au FileType c setl ofu=ccomplete#CompleteCpp
au FileType css setl ofu=csscomplete#CompleteCSS


let g:ycm_min_num_of_chars_for_completion = 1

"correct html code formatting
let g:html_indent_inctags = "html,body,head,tbody"

autocmd BufEnter * if &filetype == "" | setlocal ft=text | endif
set wak=no

" Change Ack to ag command
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

" set tags=./tags,tags,.git/tags;

" GitGutter colors:  {{{
highlight clear SignColumn     " reset colors
" terminal:
highlight  GitGutterAdd           ctermfg=black ctermbg=green       guifg=black  guibg=green
highlight  GitGutterChange        ctermfg=black ctermbg=yellow      guifg=black  guibg=yellow
highlight  GitGutterDelete        ctermfg=black ctermbg=red         guifg=black  guibg=red
highlight  GitGutterChangeDelete  ctermfg=black ctermbg=darkyellow  guifg=black  guibg=darkyellow

" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬
 
" highlight  NonText      guifg=#4a4a59
" highlight  SpecialKey   guifg=#4a4a59
 
""""""""""""""""""""""""""""""""""""" }}}
:let multi_cursor_exit_from_insert_mode=0 " setup for multicursor on normal mode

" vim-autoformat:extra templates:  {{{
" let g:autoformat_verbosemode=1 

"" for php use gg=G and f5(autoformat) after
" php
let g:formatdef_tidy_php = '"tidy -q --show-errors 0 --show-warnings 0 --force-output --indent auto --indent-spaces ".shiftwidth()." --vertical-space yes --tidy-mark no -asphp -wrap ".&textwidth'
let g:formatters_php = ['tidy_php']

" phtml
let g:formatdef_tidy_phtml = '"tidy -q --show-errors 0 --show-warnings 0 --force-output --indent auto --indent-spaces ".shiftwidth()." --vertical-space yes --tidy-mark no -asphtml -wrap ".&textwidth'
let g:formatters_phtml = ['tidy_phtml']

""""""""""""""""""""""""""""""""""""""""""""""}}}

" dicionários ispell configurações:
" au! BufNewFile,BufRead * let b:spell_language="brasileiro"
" au! BufNewFile,BufRead * let b:spell_language="en_us"
set spelllang=en_us,pt
" set spell
set completeopt=menuone,longest,noinsert,preview
set wildmode=longest:list,full
set wildmenu
set complete +=k









"                               }}} **********  End of environment variables **********


"  Keyboard Mappings  {{{**************************************************

" map <silent> <F2> :call BufferList()<CR> trocado por unite \\b

" Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! w !sudo tee > /dev/null %

"map <F4> :TlistToggle<cr>
nmap \e :NERDTreeToggle<CR>
"""""""""""""""""""""""""""Snippets and code aux."""""""""""""""""""""""""
"  let g:UltiSnipsSnippetDirectories=[$HOME.'/.vim/snippets']
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
" let g:UltiSnipsExpandTrigger="<c-j>"
" let g:UltiSnipsJumpForwardTrigger="<c-ç>"
" let g:UltiSnipsJumpBackwardTrigger="<c-s-j>"
" Set ultisnips triggers
" let g:UltiSnipsExpandTrigger="<c-j>"                                            
" let g:UltiSnipsJumpForwardTrigger="<c-j>"                                       
" let g:UltiSnipsJumpBackwardTrigger="<c-k>" 

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:SuperTabDefaultCompletionType = '<C-n>'

"tagbar shortcut
nmap <F8> :TagbarToggle<CR>

" emmet expand shortcut
imap <C-e> <C-y>,

" map <F3> :RN<CR>
nmap <F12> <Esc>:source ~/.vimrc<CR>
" map <F5> <Esc>:EnableFastPHPFolds<Cr>
" map <F6> <Esc>:EnablePHPFolds<Cr>
" map <F7> <Esc>:DisablePHPFolds<Cr>

" let g:ctrlp_map = '<c-p>'
" let g:ctrlp_cmd = 'CtrlP'

" tmux hack arrows:
if &term =~ '^screen'
    "tmux will send xterm-style keys when its xterm-keys option is on
    execute "set <xUp>=\e[1;*A"
    execute "set <xDown>=\e[1;*B"
    execute "set <xRight>=\e[1;*C"
    execute "set <xLeft>=\e[1;*D"
endif
let g:move_key_modifier = 'C'  " move plugin key settings C=control

""""""""""""""""""begin easy motion"""""""""""""""""""""""""""""{{
" <Leader>f{char} to move to {char}
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)
" s{char}{char} to move to {char}{char}
"  nmap s <Plug>(easymotion-overwin-f0)
" Move to line
" map <Leader>L <Plug>(easymotion-bd-jk)
" nmap <Leader>L <Plug>(easymotion-overwin-line)
" Move to word
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)

""}}""""""""""""""""""""end easy motion"""""""""""""""""""""""
noremap <F7> :Autoformat<CR><CR>
" remap for wrap jumps
nnoremap j gj
nnoremap k gk
cmap <C-p> <up>
cmap <C-n> <DOWN>

" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>

" Code folding options
nmap <leader>f0 :set foldlevel=0<CR>
nmap <leader>f1 :set foldlevel=1<CR>
nmap <leader>f2 :set foldlevel=2<CR>
nmap <leader>f3 :set foldlevel=3<CR>
nmap <leader>f4 :set foldlevel=4<CR>
nmap <leader>f5 :set foldlevel=5<CR>
nmap <leader>f6 :set foldlevel=6<CR>
nmap <leader>f7 :set foldlevel=7<CR>
nmap <leader>f8 :set foldlevel=8<CR>
nmap <leader>f9 :set foldlevel=9<CR>


" Tabularize {
if isdirectory(expand("~/.vim/bundle/tabular"))
    nmap <Leader>a& :Tabularize /&<CR>
    vmap <Leader>a& :Tabularize /&<CR>
    nmap <Leader>a= :Tabularize /^[^=]*\zs=<CR>
    vmap <Leader>a= :Tabularize /^[^=]*\zs=<CR>
    nmap <Leader>a=> :Tabularize /=><CR>
    vmap <Leader>a=> :Tabularize /=><CR>
    nmap <Leader>a: :Tabularize /:<CR>
    vmap <Leader>a: :Tabularize /:<CR>
    nmap <Leader>a:: :Tabularize /:\zs<CR>
    vmap <Leader>a:: :Tabularize /:\zs<CR>
    nmap <Leader>a, :Tabularize /,<CR>
    vmap <Leader>a, :Tabularize /,<CR>
    nmap <Leader>a,, :Tabularize /,\zs<CR>
    vmap <Leader>a,, :Tabularize /,\zs<CR>
    nmap <Leader>a<Space> :Tabularize / <CR>
    vmap <Leader>a<Space> :Tabularize / <CR>
endif
" end of tabularize }

"  Unite key bindings {{
nnoremap <leader><leader><leader> :Unite -start-insert<CR>
nnoremap <leader><leader>f :Unite file -start-insert<CR>
nnoremap <leader><leader>fr :Unite file_rec -start-insert<CR>
nnoremap <leader><leader>fb :Unite file buffer -start-insert<CR>
nnoremap <leader><leader>b :Unite buffer -start-insert<CR>
nnoremap <leader><leader>bt :Unite buffer_tab -start-insert<CR>
nnoremap <leader><leader>j :Unite jump -start-insert<CR>
nnoremap <leader><leader>w :Unite window -start-insert<CR>
nnoremap <leader><leader>t :Unite tab -start-insert<CR>
nnoremap <leader><leader>m :Unite mappings -start-insert<CR>
nnoremap <leader><leader>c :Unite command -start-insert<CR>
nnoremap <leader><leader>r :Unite registers -start-insert <CR>
"  }}                       end of Unite

command! Bd BD

" copy paste {{
vmap <C-c><C-c> "+ygv"*y
" nmap <C-c> "dpyiw
vmap <C-v><C-v> "+p
nmap <C-v><C-v> "+P
imap <C-v><C-v> <Esc>"+pa


" }} fim do copy paste 

let g:online_thesaurus_map_keys = 0
nnoremap <leader>d :OnlineThesaurusCurrentWord<CR>

" tab next/previous
nmap <C-UP> gt
nmap <C-DOWN> gT


" easier window navigation
execute "set <M-j>=\ej"
execute "set <M-l>=\el"
execute "set <M-h>=\eh"
execute "set <M-k>=\ek"
nmap <M-h> <C-w>h
nmap <M-j> <C-w>j
nmap <M-k> <C-w>k
nmap <M-l> <C-w>l


"                                }}} ********************end of key mappings********************

"""""""""""""'initialize repeat after map functions
silent! call repeat#set("\<Plug>tComment", v:count)
silent! call repeat#set("\<Plug>surround", v:count)


let g:vdebug_options = {'ide_key': 'netbeans-xdebug'}
let g:vdebug_options = {'break_on_open': 0}
let g:vdebug_options = {'server': 'localhost'}
let g:vdebug_options = {'port': '9000'}




"    custom functions{{

" **********************************end of custom functions*****}}

"    custom commands  {{

" skeleton:
nmap <Space> :

" command 
command! TipoPhp execute "set ft=php"
command! TipoHtml execute "set ft=html"
command! TipoJs execute "set ft=javascipt"
command! LimpaPhp execute "call Limpa('php','phtml')"



fun! Limpa(...)

   " execute "set ft=".a:tipo
   " normal "ggV=G"
   for tipo in a:000
       execute "set ft=".tipo
       normal "ggV=G"

       echo tipo
       
       set ft
   endfor
endf
" **********************************end of custom commands*****}}

