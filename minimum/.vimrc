"vim:fdm=marker
set nocompatible  
" Installer {{{ "
call plug#begin('~/.vim/plugged')

" Plugins go here
Plug 'tpope/vim-fugitive'
Plug 'KabbAmine/vCoolor.vim'      " color picker:
Plug 'qpkorr/vim-bufkill' " kill/delete buffer without close window
" Plug 'Shougo/vimproc'
" Plug 'm2mdas/phpcomplete-extended'
" Plug 'stephpy/vim-php-cs-fixer'
Plug 'Chiel92/vim-autoformat'
Plug 'KabbAmine/vCoolor.vim'      " color picker:
Plug 'MarcWeber/vim-addon-mw-utils'   "necessary for snippets
Plug 'SirVer/ultisnips'
" Plug 'Valloric/YouCompleteMe'    "autocmplete Plug
Plug 'airblade/vim-gitgutter'
Plug 'ap/vim-css-color'
Plug 'cakebaker/scss-syntax.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'godlygeek/tabular' " tabular data organizer
Plug 'jeffkreeftmeijer/vim-numbertoggle'
" Plug 'joonty/vdebug'  "debugger
Plug 'jszakmeister/vim-togglecursor'        "detector de cursor insert mode
Plug 'majutsushi/tagbar'                "tagbar navigation
Plug 'marijnh/tern_for_vim' "javascript tag corrector
Plug 'mattn/emmet-vim'        "emmet Plug    
Plug 'matze/vim-move'    " move blocks/lines
Plug 'mbbill/undotree' " undo manager     
Plug 'mileszs/ack.vim'
Plug 'pangloss/vim-javascript'        "javascript compatibility Plug
    " Plug 'roblillack/vim-bufferlist'
Plug 'scrooloose/nerdtree' "tree file explorer
Plug 'scrooloose/syntastic'    "code syntax review
" Plug 'shawncplus/phpcomplete.vim'  " autocompletion for php
Plug 'shougo/unite.vim'  "fuzzy navigator
Plug 'tamnil/vim-browser-reload-linux' " Session manager 
Plug 'terryma/vim-multiple-cursors'  "debuger
" Plug 'tobys/pdv'    "PDV para phpDocumentor
" Plug 'tobys/vmustache'    
Plug 'tomtom/tlib_vim'          "necessary for snippets
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround' " Plug for surrounding in tags
Plug 'Shougo/neomru.vim' " arrange windows
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-scripts/tComment'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-session' " Session manager     
Plug 'easymotion/vim-easymotion'  " move with shortcuts
Plug 'beloglazov/vim-online-thesaurus'
Plug 'kshenoy/vim-signature' "vim-signature is a Plug to place, toggle and display marks. 
Plug 'vim-scripts/dbext.vim'  " database pipe
Plug 'gcmt/taboo.vim'  " Naming tabs

"my custom scripts:
Plug 'tamnil/vim-custom-scripts'  " scripts customizados diversos
Plug 'tamnil/vim-snippets' " substituido por /tamnil/vimcustom-snippets no diretorio vim/snippets

" Plug 'zhaocai/GoldenView.Vim' " arrange windows
" Plug 'tyok/nerdtree-ack'  "Plug nerdtree + ack
" Plug 'jistr/vim-nerdtree-tabs'  " open nerdtree in tabs
" Plug 'Xuyuanp/nerdtree-git-Plug'   "git plugin for nerdtree
" Plug 'Townk/vim-autoclose'    "autoclose Plug
" Plug 'Raimondi/delimitMate'  " Fecha parenteses e outras formas ---------> caus problema em arrasta e copia-colar
" Plug 'ctrlpvim/ctrlp.vim'
" Plug 'garbas/vim-snipmate'
" Plug 'wincent/Command-T'
" Plug 'yuratomo/w3m.vim'
" Plug '2072/PHP-Indenting-for-VIm'
" Plug 'maksimr/vim-jsbeautify'
" Plug 'joonty/vim-phpqa.git'
" Plug 'einars/js-beautify' 
" Plug  'vim-scripts/highlight.vim'


call plug#end()
" }}} Installer "

" General editor configuration {{{ "
runtime macros/matchit.vim  "match angle brackets(xml)
set undodir=~/.vim/tmp/undo//
set backupdir=~/.vim/tmp/backup//
set directory=~/.vim/tmp/swp//
set undofile   " enable undo
set backup  "enable backups
set laststatus=2
set t_Co=256
set tabstop=4   " size of a hard tab stop
set shiftwidth=4 " size of an indent
set smarttab " make "tab" insert indents instead of tabs at the beginning of a line
set expandtab  " always uses spaces instead of tab characters
set softtabstop=4
set encoding=utf-8
set title                   " Show the filename in the window title bar.
set showcmd                 " show partial command on last line of screen.
set noshowmatch               " show matching parenthesis
set splitbelow splitright   " how to split new windows.
set scrolloff=3             " Start scrolling n lines before horizontal border of window.
set sidescrolloff=7         " Start scrolling n chars before end of screen.
set sidescroll=1            " The minimal number of columns to scroll horizontally.
set hidden
set nosol  "not go to start of line in 'G'
set autoread "reload a file when modified externally
set clipboard+=unnamedplus  " Set clipboard mode install xsel to work!
set backspace=indent,eol,start  " allow backspacing over everything.
" set esckeys                     " Allow cursor keys in insert mode.
set cursorline              " Highlight current line
set cursorcolumn            "hightlight current column
" set colorcolumn=80        " set column marker
set nofoldenable


set guifont=Inconsolata-g\ for\ Powerline\ Medium\ 9




" }}} General editor configuration "

" General plugins configurations {{{ "
let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']
let g:snips_author = 'Tamnil Saito Junior - www.tamnil.com'

" let g:BufferListWidth = 25
" let g:BufferListMaxWidth = 50

let g:airline#extensions#tabline#enabled = 1
let NERDTreeShowLineNumbers=1
let g:airline_powerline_fonts = 1

" }}} General plugins configurations "

" sessions {{{ "

set sessionoptions+=tabpages,globals  " to taboo(tab naming) remember names
let g:session_autoload = 'yes'
let g:session_autosave = 'yes'

" }}} sessions "

" Status line {{{ "
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
" }}} Status line "

"  colors:  {{{
" colorscheme monokai
hi Search cterm=bold,underline ctermfg=grey ctermbg=238
hi Search guifg=white guibg=#767676
hi LineNr ctermbg=235 guibg=#262626

highlight clear SignColumn     " reset colors
" terminal:
hi   GitGutterAdd            ctermfg=black   ctermbg=green        guifg=black   guibg=green
hi   GitGutterChange         ctermfg=black   ctermbg=yellow       guifg=black   guibg=yellow
hi   GitGutterDelete         ctermfg=black   ctermbg=red          guifg=black   guibg=red
hi   GitGutterChangeDelete   ctermfg=black   ctermbg=darkyellow   guifg=black   guibg=darkyellow
hi   Visual                  ctermbg=blue    guibg=blue
" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬
" }}} end of colors

" --- history / file handling --- {{{
set history=999             " Increase history (default = 20)
set undolevels=999          " Moar undo (default=100)
" end of file handling }}}

" --- search / regexp ---{{{
set magic                   " Enable extended regexes.
set hlsearch                " highlight searches
set incsearch               " show the `best match so far' astyped
set ignorecase smartcase    " make searches case-insensitive, unless they contain upper-case letters
set smartcase
" end of regesxp-search }}}

" Line numbering {{{ "
set number
au FocusLost * :set number
au FocusGained * :set relativenumber

" }}} Line numbering "

" Code completion {{{ "

" dicionários ispell configurações:
" au! BufNewFile,BufRead * let b:spell_language="brasileiro"
" au! BufNewFile,BufRead * let b:spell_language="en_us"
set spelllang=en_us,pt
" set spell
" set completeopt=menuone,longest,noinsert,preview
set wildmode=longest:list,full
set wildmenu
" set complete +=k
set omnifunc=syntaxcomplete#Complete
set completefunc=syntaxcomplete#Complete
set complete=.,w,b,u,U,t,i,d
augroup omni_complete
    " clear commands before resetting
    autocmd!
    " Enable omnicomplete for supported filetypes
    autocmd FileType css,scss setlocal omnifunc=csscomplete#CompleteCSS
    autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
    autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
    autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
    autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
augroup END

autocmd BufNewFile,BufRead cvim*.txt   set ft=web

" }}} Code completion "

" vcolor mappings {{{ "
let g:vcoolor_custom_picker = 'yad --title "custom" --color-selection --show-palette --init-color='
let g:vcoolor_disable_mappings = 1
" let g:vcoolor_map
let g:vcoolor_map = '<leader>c'
let g:vcool_ins_rgba_map = '<leader>cr'
" }}} "end of vcolor mappings

" Syntastic {{{1 "
let g:syntastic_check_on_open = 1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_wq = 0
autocmd VimEnter * SyntasticToggleMode " disable syntastic check by default 
" let g:syntastic_php_checkers = ["php" ]
let g:syntastic_php_checkers = ["php","phpmd","phpcs"]
let g:syntastic_php_phpcs_args='--standard=PSR2 -n --tab-width=0'
" end sysntastic}}} "-------####

" php {{{php1 "
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

let php_folding = 0        "Set PHP folding of classes and functions.
let php_htmlInStrings = 1  "Syntax highlight HTML code inside PHP strings.
let php_sql_query = 1      "Syntax highlight SQL code inside PHP strings.
let php_noShortTags = 1    "Disable PHP short tags.
" end php}}} " php end

"  File Type detection""""{{{
filetype on
filetype plugin on
filetype plugin indent on    " required


" custom filetype {{{ "
au BufNewFile,BufRead *.gitignore set filetype=gitignore

" }}} custom filetype "

set omnifunc=syntaxcomplete#Complete
au FileType php setl ofu=phpcomplete#CompletePHP
au FileType ruby,eruby setl ofu=rubycomplete#Complete
au FileType html,xhtml setl ofu=htmlcomplete#CompleteTags
au FileType c setl ofu=ccomplete#CompleteCpp
au FileType css setl ofu=csscomplete#CompleteCSS
au FileType python setl ofu=pythoncomplete#Complete
"   }}}  end of ft detection

"  Keyboard Mappings  {{{

" map <silent> <F2> :call BufferList()<CR> trocado por unite \\b

" Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! w !sudo tee > /dev/null %

"map <F4> :TlistToggle<cr>
nmap \e :NERDTreeToggle<CR>

" Snippets and completions {{{ "
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

let g:UltiSnipsSnippetsDir = "~/.vim/plugged/vim-snippets/UltiSnips"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" }}} Snippets and completions "

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
    " execute "set <xUp>=\e[1;*A"
    " execute "set <xDown>=\e[1;*B"
    " execute "set <xRight>=\e[1;*C"
    " execute "set <xLeft>=\e[1;*D"
endif
let g:move_key_modifier = 'C'  " move plugin key settings C=control

"    Easy motion   {{{
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

"   }}}   end easy motion

" noremap <F7> :Autoformat<CR><CR>
" remap for wrap jumps
nnoremap j gj
nnoremap k gk
cmap <C-p> <up>
cmap <C-n> <DOWN>

" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>

" Code folding options {{{
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

"}}} Code folding options

" Tabularize {{{
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
" end of tabularize }}}

"  Unite key bindings {{{

nnoremap <leader><leader><leader> :Unite -start-insert<CR>
nnoremap <leader><leader>f :Unite file -start-insert<CR>
nnoremap <leader><leader>fr :Unite file_rec -start-insert<CR>
nnoremap <leader><leader>fm :Unite file_mru -start-insert<CR>
nnoremap <leader><leader>fl :Unite file_list -start-insert<CR>
nnoremap <leader><leader>fra :Unite file_rec/async -start-insert<CR>
nnoremap <leader><leader>frg :Unite file_rec/git -start-insert<CR>
nnoremap <leader><leader>fb :Unite file buffer -start-insert<CR>
nnoremap <leader><leader>b :Unite buffer -start-insert<CR>
nnoremap <leader><leader>bt :Unite buffer_tab -start-insert<CR>
nnoremap <leader><leader>j :Unite jump -start-insert<CR>
nnoremap <leader><leader>w :Unite window -start-insert<CR>
nnoremap <leader><leader>wg :Unite window/gui -start-insert<CR>
nnoremap <leader><leader>t :Unite tab -start-insert<CR>
nnoremap <leader><leader>m :Unite mappings -start-insert<CR>
nnoremap <leader><leader>c :Unite command -start-insert<CR>
nnoremap <leader><leader>r :Unite register -start-insert <CR>
nnoremap <leader><leader>d :Unite directory -start-insert <CR>
nnoremap <leader><leader>dr :Unite directory_rec -start-insert <CR>
nnoremap <leader><leader>dra :Unite directory_rec/async -start-insert <CR>
nnoremap <leader><leader>dm :Unite directory_mru -start-insert <CR>
nnoremap <leader><leader>g :Unite grep -start-insert <CR>
nnoremap <leader><leader>gg :Unite grep/git -start-insert <CR>
nnoremap <leader><leader>gv :Unite vimgrep -start-insert <CR>
" nnoremap <leader><leader> :Unite -start-insert <CR>
"  }}}                      end of Unite

command! Bd BD

" copy paste {{{
" vmap <C-c><C-c> "+ygv"*y
" nmap <C-c> "dpyiw
" vmap <C-v><C-v> "+p
" nmap <C-v><C-v> "+P
" imap <C-v><C-v> <Esc>"+pa
"

" " Copy to clipboard
vnoremap  <leader>y  "+y
nnoremap  <leader>Y  "+yg_
nnoremap  <leader>y  "+y
nnoremap  <leader>yy  "+yy

" " Paste from clipboard
nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P


" }}} fim do copy paste 

let g:online_thesaurus_map_keys = 0
nnoremap <leader>d :OnlineThesaurusCurrentWord<CR>

" Navigation {{{ "

" tab next/previous
nmap <C-UP> gt
nmap <C-DOWN> gT

" easier window navigation
" execute "set <M-j>=\ej"
" execute "set <M-l>=\el"
" execute "set <M-h>=\eh"
" execute "set <M-k>=\ek"

imap <M-h> <C-LEFT>
imap <M-l> <C-RIGHT>
imap <M-k> <LEFT>
imap <M-j> <RIGHT>

cmap <M-h> <C-LEFT>
cmap <M-l> <C-RIGHT>
cmap <M-k> <LEFT>
cmap <M-j> <RIGHT>

map <M-h> <C-LEFT>
map <M-l> <C-RIGHT>

map <M-k> <LEFT>
map <M-j> <RIGHT>
" nmap <M-o> o<ESC><ESC>
" nmap <Space> :
" vmap <Space> :
" nmap <C-A> ggVG " colide com incremento

" }}} Navigation "

" keyboard mappings }}}

" repeat plugin {{{ "


"""""""""""""'initialize repeat after map functions
silent! call repeat#set("\<Plug>tComment", v:count)
silent! call repeat#set("\<Plug>surround", v:count)
autocmd FileType * set formatoptions-=c formatoptions-=r formatoptions-=o " remove autocomment

" }}} repeat plugin "

"Tagbar {{{1 "
noremap <silent> <Leader>t :<C-u>TagbarToggle<CR>

let g:tagbar_type_css = {
            \ 'ctagstype' : 'Css',
            \ 'kinds'     : [
            \ 'c:classes',
            \ 's:selectors',
            \ 'i:ids',
            \ 't:tags',
            \ 'm:media' ]
            \ }

" end of tagbar}}} "

" External Functions {{{ "

" Xdebug  configuration{{{ "
" let g:vdebug_options = {'ide_key': 'netbeans-xdebug'}
" let g:vdebug_options = {'break_on_open': 0}
" let g:vdebug_options = {'server': 'localhost'}
" let g:vdebug_options = {'port': '9000'}

" }}} end-sdebug" 

" dbext configuration {{{ "
let g:dbext_default_profile_mySQLLocal = 'type=SQLSRV:integratedlogin=1:srvname=mySrv:dbname=myDB'
let g:dbext_default_profile = 'mySQLocal'
let g:dbext_default_profile_mySQL = 'type=MYSQL:user=local:passwd=!local!:dbname=mysql'
" }}} dbext" 


" }}} External Functions "

