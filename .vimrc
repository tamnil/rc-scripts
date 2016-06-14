set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
"""""""""""""""""""""""init of Vundle plugins"""""""""""
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" Plugin 'tpope/vim-rsi'
"
" All of your Plugins must be added before the following line
" installing snippets plugin ##############################
Plugin 'MarcWeber/vim-addon-mw-utils'	"necessary for snippets
Plugin 'tomtom/tlib_vim'  		"necessary for snippets
" Track the engine.
" Plugin 'SirVer/ultisnips'
" Snippets are separated from the engine. Add this if you want them:
" Plugin 'honza/vim-snippets'
" Plugin 'maksimr/vim-jsbeautify'
" Plugin 'einars/js-beautify' 
" Plugin 'editorconfig/editorconfig-vim'
Plugin 'marijnh/tern_for_vim' "javascript tag corrector
Plugin 'Valloric/YouCompleteMe'    "autocmplete plugin
Plugin 'mattn/emmet-vim', {'name': 'emmet'}		"emmet plugin	
Plugin 'pangloss/vim-javascript'		"javascript compatibility plugin
Plugin 'majutsushi/tagbar'				"tagbar navigation
Plugin 'jszakmeister/vim-togglecursor'		"detector de cursor insert mode
Plugin 'scrooloose/nerdtree' "tree file explorer
Plugin '2072/PHP-Indenting-for-VIm'

Plugin 'jeffkreeftmeijer/vim-numbertoggle'
" file explorers
Plugin 'wincent/Command-T'
Plugin 'mileszs/ack.vim'
Plugin 'tyok/nerdtree-ack'  "plugin nerdtree + ack
Plugin 'roblillack/vim-bufferlist'
Plugin 'xolox/vim-session'
" Session manager 	
Plugin 'xolox/vim-misc'
Plugin 'vim-scripts/tComment'
Plugin 'kien/ctrlp.vim'
Plugin 'KabbAmine/vCoolor.vim'		" color picker:
Plugin 'Lokaltog/vim-easymotion'
" Plugin 'xolox/vim-notes' 	"vim note 
" Plugin 'powerline/powerline'
Plugin 'bling/vim-airline'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'Chiel92/vim-autoformat'
" Plugin 'joonty/vim-phpqa.git'
" Plugin 'scrooloose/syntastic'    "code syntax review

" Plugin  'vim-scripts/highlight.vim'
" Plugin 'tpope/vim-surround'
" Plugin 'tpope/vim-repeat'

Plugin 'ap/vim-css-color'
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal

" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this 
" ****************************************************************************
""""""""""""""""""""""end of vundle plugins"""""""""""""""""""""""""""
call vundle#end()            " required

""""""""""""""""""""""plugins pathogen instalation begin""""""""""""""""""""""""""
execute pathogen#infect()

nmap \e :NERDTreeToggle<CR>
let NERDTreeShowLineNumbers=1
" let rtp+=/usr/local/lib/python2.7/dist-packages/powerline/bindings/vim/
" set guifont=Ubuntu\ Mono\ derivative\ Powerline\ 12
let g:airline_powerline_fonts = 1

" set fillchars+=stl:\ ,stlnc:\
set laststatus=2
set t_Co=256
set number
" size of a hard tabstop
set tabstop=4
" size of an "indent"
set shiftwidth=4
" a combination of spaces and tabs are used to simulate tab stops at a width
" other than the (hard)tabstop
" make "tab" insert indents instead of tabs at the beginning of a line
set smarttab
" always uses spaces instead of tab characters
set expandtab
set softtabstop=4
set encoding=utf-8
set mouse=a
set backupdir=~/tmp/backup//
set directory=~/tmp/swap//
set undodir=~/tmp/undo//
set history=2000
let g:Powerline_symbols = 'fancy'
let g:jsbeautify = {"indent_size": 4, "indent_char": "\t"} 
let g:editorconfig_Beautifier= '~/.vim/.editorconfig'
let NERDTreeShowLineNumbers=1
" LustyExplorer hide messages error:
set hidden

" let g:w3m#command = '/usr/bin/w3m'
"ctags code explorer and taggins setup:
"let Tlist_Ctags_Cmd = "/usr/bin/ctags"
"let Tlist_WinWidth = 50
let g:snips_author = 'Tamnil Saito Junior - www.tamnil.com'
map <silent> <F2> :call BufferList()<CR>
"map <F4> :TlistToggle<cr>

" Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! w !sudo tee > /dev/null %

"""""""""""""""""""""""""""Snippets and code aux."""""""""""""""""""""""""
" let g:snips_trigger_key = '<tab>'
" let g:snips_trigger_key_backwards = '<s-tab>'
" imap <C-j> <Plug>snipMateNextOrTrigger
" smap <C-j> <Plug>snipMateNextOrTrigger
" let g:user_emmet_leader_key='çç'

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
" let g:UltiSnipsExpandTrigger="<c-j>"
" let g:UltiSnipsJumpForwardTrigger="<c-ç>"
" let g:UltiSnipsJumpBackwardTrigger="<c-s-j>"
" Set ultisnips triggers
let g:UltiSnipsExpandTrigger="<tab>"                                            
let g:UltiSnipsJumpForwardTrigger="<tab>"                                       
let g:UltiSnipsJumpBackwardTrigger="<s-tab>" 

" let g:UltiSnipsExpandTrigger="<c-j>"
" let g:UltiSnipsJumpForwardTrigger="<c-j>"
" let g:UltiSnipsJumpBackwardTrigger="<c-s-j>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'
" vim 256 color support:
" set _AB=^[[48;5;%dm
" set t_AF=^[[38;5;%dm

"tagbar shortcut
nmap <F8> :TagbarToggle<CR>
imap <s-space> <c-y>,
" map <F3> :RN<CR>
map <F12> :source ~/.vimrc<CR>
" map <F5> <Esc>:EnableFastPHPFolds<Cr>
" map <F6> <Esc>:EnablePHPFolds<Cr>
" map <F7> <Esc>:DisablePHPFolds<Cr>  
"

let g:BufferListWidth = 25
let g:BufferListMaxWidth = 50
"color options 
" hi BufferSelected term=reverse ctermfg=white ctermbg=red cterm=bold
" hi BufferNormal term=NONE ctermfg=black ctermbg=darkcyan cterm=NONE
" hi NonText ctermfg=7 guifg=black guibg=gray20
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
"let g:ctrlp_custom_ignore = {'dir':  '\v[\/]\.(git|hg|svn)$','file': '\v\.(exe|so|dll)$','link': 'some_bad_symbolic_links' }
" Use a custom file listing command:
let g:ctrlp_user_command = 'find %s -type f'        " MacOSX/Linux
""""""""""""""""""""colors and desktop"""""""""""""""""""""""""""""""""""""
colorscheme industry 
" hi Search guibg=peru guifg=wheat
"  hi Search guibg=peru guifg=black
"  hi Search cterm=NONE ctermfg=black ctermbg=red
" sessions states
let g:session_autoload = 'no'
let g:session_autosave = 'no'
" dicionarios ispell configuraoes:
au! BufNewFile,BufRead * let b:spell_language="brasileiro"

" au BufRead,BufNewFile *.scss set filetype=scss.cssau BufRead,BufNewFile *.scss
" set filetype=scss.css
" "		Notes:
" let g:notes_directories = ['~/Documents/Notes', '~/Dropbox/Shared Notes']
"
noremap <F7> :Autoformat<CR><CR>

"map <F7> :SpellCheck<CR>
"map <F6> :SpellProposeAlternatives<CR>
"""""""""""""""""""""""""highlight search"""""""""""""""""""""""""""""""
set incsearch
set hlsearch
set ignorecase
set smartcase
set wildmode=longest:full
set wildmenu
"""""""""""""""""""""""""""' Enable Code Folding"""""""""""""""""""""""""""'

" set foldmethod=syntax
" set foldmethod=marker
set foldmethod=indent

""""""""""""""""""""""""""""' line numbering """"""""""""""""""""""""""""""""
au FocusLost * :set number
"au FocusGained * :set relativenumber
autocmd InsertEnter * :set number
"autocmd InsertLeave * :set relativenumber


" let php_folding=1
set nofoldenable
set showcmd	


"disable autocemment:
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
" nnoremap ' `
" nnoremap ` '
nnoremap ç `
nnoremap çç ``
"nnoremap ` '
set viminfo='1000,f1,<250
""""""""""""""""""""""""""   File Type detection"""""""""""""""""""""""
filetype on
filetype plugin on
filetype plugin indent on    " required

"correct html code formatting
let g:html_indent_inctags = "html,body,head,tbody"

" set list listchars=tab:»·,trail:·,eol:«
" ******************************firefox refresh function***********
" autocmd BufWriteCmd *.html,*.css,*.js,*.php,*.gtpl :call Refresh_firefox()
" function! Refresh_firefox()
"     if &modified
"         write
"         silent !echo  'vimYo = content.window.pageYOffset;
"                     \ vimXo = content.window.pageXOffset;
"                     \ BrowserReload();
"                     \ content.window.scrollTo(vimXo,vimYo);
"                     \ repl.quit();'  |
"                     \ nc -w 1 localhost 4242 2>&1 > /dev/null
"     endif
" endfunction
" command! -nargs=1 Repl silent !echo
"             \ "repl.home();
"             \ content.location.href = '<args>';
"             \ repl.enter(content);
"             \ repl.quit();" |
"             \ nc localhost 4242
"
" nmap <leader>mh :Repl http://
" " mnemonic is MozRepl Http
" nmap <silent> <leader>ml :Repl file:///%:p<CR>
" " mnemonic is MozRepl Local
" nmap <silent> <leader>md :Repl http://localhost/
" " mnemonic is MozRepl Development
" "
nmap \w :setlocal wrap!<CR>:setlocal wrap?<CR>



au FocusLost * :set number
au FocusGained * :set relativenumber

set wak=no
"
" map <C-h> <C-w>h
" map <C-j> <C-w>j
" map <C-k> <C-w>k
" map <C-l> <C-w>l
"
" nnoremap ; :
nnoremap j gj
nnoremap k gk
"
" map <up> <nop>
" map <down> <nop>
" map <left> <nop>
" map <right> <nop>
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0		
 let g:syntastic_php_checkers = ["php", "phpmd"]
 " MySQL
let g:dbext_default_profile_mysql_local = 'type=MYSQL:user=root:passwd=whatever:dbname=mysql'
let g:ycm_server_python_interpreter = '/usr/bin/python2.7'
