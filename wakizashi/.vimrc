set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
"""""""""""""""""""""""init of Vundle plugins"""""""""""
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" Plugin 'tpope/vim-rsi'
"
" All of your Plugins must be added before the following line
" installing snippets plugin ##############################
" Bundle 'Shougo/unite.vim'
" Plugin 'xolox/vim-notes' 	"vim note 
Plugin 'tamnil/vim-browser-reload-linux' " Session manager 	

Bundle 'Shougo/vimproc'
Bundle 'm2mdas/phpcomplete-extended'
Plugin '2072/PHP-Indenting-for-VIm'
Plugin 'Chiel92/vim-autoformat'
Plugin 'KabbAmine/vCoolor.vim'		" color picker:
Plugin 'MarcWeber/vim-addon-mw-utils'	"necessary for snippets
" Plugin 'Valloric/YouCompleteMe'    "autocmplete plugin
Plugin 'airblade/vim-gitgutter'
Plugin 'ap/vim-css-color'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'easymotion/vim-easymotion'
Plugin 'jeffkreeftmeijer/vim-numbertoggle'
Plugin 'jszakmeister/vim-togglecursor'		"detector de cursor insert mode
Plugin 'majutsushi/tagbar'				"tagbar navigation
Plugin 'marijnh/tern_for_vim' "javascript tag corrector
Plugin 'mattn/emmet-vim'		"emmet plugin	
Plugin 'mileszs/ack.vim'
Plugin 'pangloss/vim-javascript'		"javascript compatibility plugin
Plugin 'roblillack/vim-bufferlist'
Plugin 'scrooloose/nerdtree' "tree file explorer
Plugin 'tomtom/tlib_vim'  		"necessary for snippets
Plugin 'tpope/vim-surround' " plugin for surrounding in tags
Plugin 'tyok/nerdtree-ack'  "plugin nerdtree + ack
Plugin 'vim-scripts/tComment'
Plugin 'wincent/Command-T'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-session' " Session manager 	
Plugin 'tpope/vim-repeat'
Plugin 'yuratomo/w3m.vim'

" Plugin 'scrooloose/syntastic'    "code syntax review
" Plugin 'powerline/powerline'
" Plugin 'maksimr/vim-jsbeautify'
" Plugin 'joonty/vim-phpqa.git'
" Plugin 'honza/vim-snippets'
" Plugin 'einars/js-beautify' 
" Plugin 'editorconfig/editorconfig-vim'
" Plugin 'SirVer/ultisnips'
" Plugin  'vim-scripts/highlight.vim'

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

set undodir=~/.vim/tmp/undo//
set backupdir=~/.vim/tmp/backup//
set directory=~/.vim/tmp/swp//
set laststatus=2
set t_Co=256
set tabstop=4   " size of a hard tabstop
set shiftwidth=4 " size of an "indent"
" a combination of spaces and tabs are used to simulate tab stops at a width
" other than the (hard)tabstop
set smarttab " make "tab" insert indents instead of tabs at the beginning of a line
set expandtab  " always uses spaces instead of tab characters
set softtabstop=4
set encoding=utf-8
set mouse=a " set mouse value
let g:editorconfig_Beautifier= '~/.vim/.editorconfig'
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
"let g:user_emmet_leader_key='çç'

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
" 		Notes:
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
set wildmenu
"""""""""""""""""""""""""""' Enable Code Folding"""""""""""""""""""""""""""'

" set foldmethod=syntax
" set foldmethod=marker
set foldmethod=indent

""""""""""""""""""""""""""""' line numbering """"""""""""""""""""""""""""""""
set number
au FocusLost * :set number
au FocusGained * :set relativenumber
" autocmd InsertEnter * :set number
"autocmd InsertLeave * :set relativenumber


" let php_folding=1
set nofoldenable
set showcmd	


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
" nmap <Leader>w <Plug>(easymotion-overwin-w)

"""""""""""""""""""""end easy motion""""""""""""""""""""""""""
" disable autocomment:
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



autocmd BufEnter * if &filetype == "" | setlocal ft=text | endif


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
" mnemonic is MozRepl Development
"
" nmap \w :setlocal wrap!<CR>:setlocal wrap?<CR>

set wak=no
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
" let g:dbext_default_profile_mysql_local = 'type=MYSQL:user=root:passwd=whatever:dbname=mysql'
set clipboard^=unnamed
let g:ycm_server_python_interpreter = '/usr/bin/python2.7'


" tmux hack arrows:
if &term =~ '^screen'
            "tmux will send xterm-style keys when its xterm-keys option is on
    execute "set <xUp>=\e[1;*A"
    execute "set <xDown>=\e[1;*B"
    execute "set <xRight>=\e[1;*C"
    execute "set <xLeft>=\e[1;*D"
endif


"set updatetime=250
