" vim:fdm=marker
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

Plugin 'mbbill/undotree' " undo manager     
Plugin 'tamnil/vim-browser-reload-linux' " Session manager 
Bundle 'Shougo/vimproc'
Bundle 'stephpy/vim-php-cs-fixer'
Bundle 'm2mdas/phpcomplete-extended'
Plugin 'Chiel92/vim-autoformat'
Plugin 'MarcWeber/vim-addon-mw-utils'   "necessary for snippets
Plugin 'KabbAmine/vCoolor.vim'      " color picker:
Plugin 'Valloric/YouCompleteMe'    "autocmplete plugin
Plugin 'airblade/vim-gitgutter'
Plugin 'ap/vim-css-color'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'cakebaker/scss-syntax.vim'
" Plugin 'ctrlpvim/ctrlp.vim'
" Plugin 'easymotion/vim-easymotion'  " move with shortcuts
Plugin 'jeffkreeftmeijer/vim-numbertoggle'
Plugin 'jszakmeister/vim-togglecursor'        "detector de cursor insert mode
Plugin 'majutsushi/tagbar'                "tagbar navigation
Plugin 'marijnh/tern_for_vim' "javascript tag corrector
Plugin 'mattn/emmet-vim'        "emmet plugin    
Plugin 'mileszs/ack.vim'
Plugin 'pangloss/vim-javascript'        "javascript compatibility plugin
Plugin 'roblillack/vim-bufferlist'
Plugin 'scrooloose/nerdtree' "tree file explorer
Plugin 'tomtom/tlib_vim'          "necessary for snippets
Plugin 'tpope/vim-surround' " plugin for surrounding in tags
Plugin 'tyok/nerdtree-ack'  "plugin nerdtree + ack
Plugin 'vim-scripts/tComment'
" Plugin 'wincent/Command-T'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-session' " Session manager     
Plugin 'tpope/vim-repeat'
Plugin 'scrooloose/syntastic'    "code syntax review
Plugin 'tobys/pdv'    "PDV para phpDocumentor
Plugin 'tobys/vmustache'    "PDV para phpDocumentor
" Plugin 'garbas/vim-snipmate'
Plugin 'SirVer/ultisnips'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'matze/vim-move'    " move blocks/lines
Plugin 'jistr/vim-nerdtree-tabs'  " open nerdtree in tabs
Plugin 'Xuyuanp/nerdtree-git-plugin'   "git plugin for nerdtree
Plugin 'shawncplus/phpcomplete.vim'  " autocompletion for php
Plugin 'joonty/vdebug'  "debuger
Plugin 'terryma/vim-multiple-cursors'  "debuger
Plugin 'shougo/unite.vim'  "fuzzy navigator
Plugin 'godlygeek/tabular' " tabular data organizer

" Plugin 'yuratomo/w3m.vim'
" Plugin '2072/PHP-Indenting-for-VIm'
" Plugin 'maksimr/vim-jsbeautify'
" Plugin 'joonty/vim-phpqa.git'
" Plugin 'honza/vim-snippets' " substituido por /tamnil/vimcustom-snippets no diretorio vim/snippets
" Plugin 'einars/js-beautify' 
" Plugin  'vim-scripts/highlight.vim'


" filetype plugin on
""""""""""""""""""""""end of vundle plugins"""""""""""""""""""""""""""
call vundle#end()            " required

""""""""""""""""""""""plugins pathogen instalation begin""""""""""""""""""""""""""
execute pathogen#infect()
"  }}} end of plugins

" Enviromet variables  {{{**************************************************

let g:airline#extensions#tabline#enabled = 1
let NERDTreeShowLineNumbers=1
let g:airline_powerline_fonts = 1

set undodir=~/.vim/tmp/undo//
set undofile   " enable undo
set backupdir=~/.vim/tmp/backup//
" set backup  "enable backups
set laststatus=2
set directory=~/.vim/tmp/swp//
set t_Co=256
set tabstop=4   " size of a hard tabstop
set shiftwidth=4 " size of an indent
" a combination of spaces and tabs are used to simulate tab stops at a width
" other than the (hard)tabstop
set smarttab " make "tab" insert indents instead of tabs at the beginning of a line
set expandtab  " always uses spaces instead of tab characters
set softtabstop=4
set encoding=utf-8
set mouse=a " set mouse value
let g:editorconfig_Beautifier= '~/.vim/.editorconfig'
" LustyExplorer hide messages error:
" set hidden
set nosol  "not go to start of line in 'G'
let g:snips_author = 'Tamnil Saito Junior - www.tamnil.com'

let g:BufferListWidth = 25
let g:BufferListMaxWidth = 50
"color options 
" hi BufferSelected term=reverse ctermfg=white ctermbg=red cterm=bold
" hi BufferNormal term=NONE ctermfg=black ctermbg=darkcyan cterm=NONE
" hi NonText ctermfg=7 guifg=black guibg=gray20

""""""""""""""""""""colors and desktop"""""""""""""""""""""""""""""""""""""
colorscheme industry 
" sessions states
let g:session_autoload = 'yes'
let g:session_autosave = 'yes'
" dicionarios ispell configuraoes:
au! BufNewFile,BufRead * let b:spell_language="brasileiro"

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
set wildmode=longest:list,full
set wildmenu
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

"correct html code formatting
let g:html_indent_inctags = "html,body,head,tbody"

autocmd BufEnter * if &filetype == "" | setlocal ft=text | endif
set wak=no

" Change Ack to ag command
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

" set tags=./tags,tags,.git/tags;
autocmd FileType * set formatoptions-=c formatoptions-=r formatoptions-=o " remove autocomment

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


"                               }}} **********  End of enviroment variables **********

"  Keyboard Mappings  {{{**************************************************

" map <silent> <F2> :call BufferList()<CR> trocado por unite \\b

" Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! w !sudo tee > /dev/null %

"map <F4> :TlistToggle<cr>
nmap \e :NERDTreeTabsToggle<CR>
"""""""""""""""""""""""""""Snippets and code aux."""""""""""""""""""""""""
"  let g:UltiSnipsSnippetDirectories=[$HOME.'/.vim/snippets']
" let g:snips_trigger_key = '<tab>'
" let g:snips_trigger_key_backwards = '<s-tab>'
" smap <C-j> <Plug>snipMateNextOrTrigger
" imap <C-j> <Plug>snipMateNextOrTrigger
"let g:user_emmet_leader_key='çç'

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

" emmet expan dshortcut
imap <S-Space> <C-y>,

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

""""""""""""""""""begin easy motion"""""""""""""""""""""""""""""""
" <Leader>f{char} to move to {char}
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)
" s{char}{char} to move to {char}{char}
"  nmap s <Plug>(easymotion-overwin-f0)
" Move to line
map <Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader>L <Plug>(easymotion-overwin-line)
" Move to word
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)

"""""""""""""""""""""end easy motion""""""""""""""""""""""""""
noremap <F7> :Autoformat<CR><CR>
" remap for wrap jumps
nnoremap j gj
nnoremap k gk

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
" }

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

imap <C-f> <Right>
imap <C-b> <Left>

"                                }}} ********************end of key mappings********************

"""""""""""""'initialize repeat after map functions
silent! call repeat#set("\<Plug>tComment", v:count)
silent! call repeat#set("\<Plug>surround", v:count)


let g:vdebug_options = {'ide_key': 'netbeans-xdebug'}
let g:vdebug_options = {'break_on_open': 0}
let g:vdebug_options = {'server': 'localhost'}
let g:vdebug_options = {'port': '9000'}
