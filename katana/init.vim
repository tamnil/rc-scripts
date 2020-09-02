" File  : .nvimrc
" Author: Tamnil Saito Junior <tamnil@gmail.com>
" Date  : 01.09.2020

set nocompatible
set tags=./tags,tags;
set path=.
call plug#begin('~/.config/nvim/plugged')


Plug 'tpope/vim-fugitive'
Plug 'xolox/vim-misc'  " required by vim-session
Plug 'xolox/vim-session' " Session manager
Plug 'leafgarland/typescript-vim' " TS syntax hightlight
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'editorconfig/editorconfig-vim'
Plug 'majutsushi/tagbar'                "tagbar navigation
Plug 'w0rp/ale' 			" code lint
Plug 'lambdalisue/suda.vim'
Plug 'vim-scripts/tComment' 		" commenter
Plug 'vim-vdebug/vdebug'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
Plug 'HerringtonDarkholme/yats.vim'
Plug 'mhartington/nvim-typescript', {'do': './install.sh'}


Plug 'mileszs/ack.vim'
Plug 'heavenshell/vim-jsdoc' " JSDOC generator
Plug 'tpope/vim-surround' " Plug for surrounding in tags
if has('nvim')
    Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }
else
    Plug 'Shougo/denite.nvim'
    Plug 'roxma/nvim-yarp'
    Plug 'roxma/vim-hug-neovim-rpc'
endif
Plug 'mattn/emmet-vim'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'ludovicchabant/vim-gutentags' " ctags generations /manage

Plug 'sheerun/vim-polyglot'  " multiple language packes

Plug 'SirVer/ultisnips'

Plug 'tamnil/vim-snippets'



Plug 'pangloss/vim-javascript'
Plug 'storyn26383/vim-vue'
Plug 'leafoftree/vim-vue-plugin'
Plug 'leafgarland/typescript-vim'
Plug 'cakebaker/scss-syntax.vim'


Plug 'alpertuna/vim-header'

call plug#end()

filetype plugin on

syntax on

let g:airline_theme='molokai'

if (has("termguicolors"))
  set termguicolors
endif

colorscheme molokai

set number
set history=999             " Increase history (default = 20)
set ignorecase
set undolevels=999          " Moar undo (default=100)
set undodir=~/.config/nvim/tmp/undo//
set backupdir=~/.config/nvim/tmp/backup//
set directory=~/.config/nvim/tmp/swp//
set undofile   " enable undo
set backup  "enable backups
set clipboard+=unnamedplus  " Set clipboard mode install xsel to work!
set nofoldenable            " not start folded
set scrolloff=3             " Start scrolling n lines before horizontal border of window.
set sidescrolloff=7         " Start scrolling n chars before end of screen.
set sidescroll=1            " The minimal number of columns to scroll horizontally.
set hidden
set nosol  "not go to start of line in 'G'
set cursorline              " Highlight current line
set cursorcolumn            "hightlight current column
set colorcolumn=120        " set column marker
set updatetime=300 		" Having longer updatetime (default is 4000 ms = 4 s) leads to delays and poor user experience.
set cmdheight=2 		" Give more space for displaying messages.
set mouse=a

set signcolumn=yes
" Don't pass messages to |ins-completion-menu|.


autocmd VimResized * wincmd =

set shortmess+=c


" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"


let g:vim_vue_plugin_load_full_syntax = 1

" sessions {{{ "

set sessionoptions+=tabpages,globals  " to taboo(tab naming) remember names
let g:session_autoload = 'no'
let g:session_autosave = 'yes'

" }}} sessions "


" augroup filetype javascript syntax=javascript


"           colors:  {{{
hi clear SignColumn     " reset colors
hi ColorColumn ctermbg=235 guibg=#222222
hi Search cterm=bold,underline ctermfg=238 ctermbg=228   guifg=white guibg=#767676
hi LineNr ctermbg=237 guibg=#262626
" terminal:
hi   GitGutterAdd            ctermfg=black   ctermbg=green        guifg=black   guibg=green
hi   GitGutterChange         ctermfg=black   ctermbg=yellow       guifg=black   guibg=yellow
hi   GitGutterDelete         ctermfg=black   ctermbg=red          guifg=black   guibg=red
hi   GitGutterChangeDelete   ctermfg=black   ctermbg=darkyellow   guifg=black   guibg=darkyellow
hi   Visual                  ctermbg=blue    guibg=blue
hi ALEError guibg=52 ctermbg=52 guifg=white ctermfg=white
hi ALEWarning guibg=17 ctermbg=17 guifg=white ctermfg=white
" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬
"           }}} end of colors

let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 0
let g:ale_lint_on_insert_leave = 1
let g:ale_set_loclist = 1
let g:ale_set_quickfix = 1


let g:ale_linters = {
            \'javascript': ['eslint'],
            \'php': ['php','phpcs','phpmd'],
            \'css': ['stylelint'],
            \'scss':['stylelint'],
            \'html':['tidy','fecs','htmlhint'],
            \'yaml':['yamllint'],
            \'vue': ['vls'],
            \'markdown':['markdown','writegood']
            \}
let g:ale_fixers = {
            \'javascript': ['prettier','eslint' ],
            \'vue': ['prettier' ,'eslint'],
            \'typescript':['prettier','eslint'],
            \'php':['php_cs_fixer','phpcbf'],
            \'json':['remove_trailing_lines','trim_whitespace','prettier','fixjson'],
            \'yaml':['prettier'],
            \'sh':['shfmt'],
            \'html':['prettier','fecs'],
            \'html.twig':['prettier','html-beautify'],
            \'css':['prettier','stylelint'],
            \'c':['uncrustify'],
            \'scss':['remove_trailing_lines','trim_whitespace','prettier','stylelint'],
            \'markdown':['prettier'],
            \'python':['yapf'],
            \}

" Only run linters named in ale_linters settings.
" let g:ale_linters_explicit = 0

"

let g:LanguageClient_serverCommands = {
    \ 'vue': ['vls']
    \ }

" let g:ale_linter_aliases = {'vue': ['vue', 'javascript']}
" let g:ale_linters = {'vue': ['eslint', 'vls']}


let g:ale_sign_error = '✖'
let g:ale_sign_warning = '⚠'

" :set formatoptions-=cro
autocmd BufNewFile,BufRead,FileType * set formatoptions-=cro   "no autocomment

" Use ALE and also some plugin 'foobar' as completion sources for all code.
call deoplete#custom#option('sources', {
\ '_': ['ale', 'foobar'],
\})

" ternjs - deoplete config

let g:deoplete#sources#ternjs#docs = 1
"Add extra filetypes
let g:deoplete#sources#ternjs#filetypes = [
                \ 'jsx',
                \ 'javascript.jsx',
                \ 'vue',
                \ '...'
                \ ]


"           custom filetype {{{ "
au BufNewFile,BufRead *.gitignore set filetype=gitignore
au BufNewFile,BufRead *.module set filetype=php
" au FileType typescript :set makeprg=tsc
" au FileType javascript :set syntax=typescript   	" use TS syntax highlight

"           }}} custom filetype "

"           vDebug {{{
" let g:vdebug_options = {'ide_key': 'dbgp'}
let g:vdebug_options = {'break_on_open': 0}"{{{}}}
let g:vdebug_options = {'server': '172.17.0.1'}
let g:vdebug_options = {'port': '9009'}
" let g:vdebug_options = {'path_maps': { '/var/www/html': '/var/www/docker-ecr/app' }}
let g:vdebug_options["path_maps"] = { "/var/www/html": "/var/www/docker-ecr1/app" }

"           end vdebug  }}}

"           JSDOC {{{
let g:jsdoc_allow_input_prompt = 1
let g:jsdoc_input_description = 1
let g:jsdoc_additional_descriptions =1
let g:jsdoc_enable_es6=1

"           end JSDOC }}}
"
let g:ale_php_phpcs_standard = 'PSR2'




cmap w!! w suda://%
nmap <F7> :NERDTreeToggle<CR>
" " " Copy to clipboard
" vnoremap  <leader>y  "+y
" nnoremap  <leader>Y  "+yg_
" nnoremap  <leader>y  "+y
" nnoremap  <leader>yy  "+yy
"
" " " Paste from clipboard
" nnoremap <leader>p "+p
" nnoremap <leader>P "+P
" vnoremap <leader>p "+p
" vnoremap <leader>P "+P
"
"
"

cmap <C-p> <up>
cmap <C-n> <DOWN>


" Use CTRL-S for saving, also in Insert mode
noremap <C-S> :update<CR>
vnoremap <C-S> <C-C>:update<CR>
inoremap <C-S> <C-O>:update<CR>



let g:UltiSnipsExpandTrigger="<tab>"
"Use tab to switch the next trigger point, shit + tab on a trigger point
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-tab>"
"Vertical splitting of the screen when using the UltiSnips Edit command
let g:UltiSnipsEditSplit="vertical"


if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif


let g:gutentags_exclude_filetypes = ['gitcommit', 'gitconfig', 'gitrebase', 'gitsendemail', 'git']
let g:gutentags_ctags_exclude = [
\  '*.git', '*.svn', '*.hg',
\  'cache', 'build', 'dist', 'bin', 'node_modules', 'bower_components',
\  '*-lock.json',  '*.lock',
\  '*.min.*',
\  '*.bak',
\  '*.zip',
\  '*.pyc',
\  '*.class',
\  '*.sln',
\  '*.csproj', '*.csproj.user',
\  '*.tmp',
\  '*.cache',
\  '*.vscode',
\  '*.pdb',
\  '*.exe', '*.dll', '*.bin',
\  '*.mp3', '*.ogg', '*.flac',
\  '*.swp', '*.swo',
\  '.DS_Store', '*.plist',
\  '*.bmp', '*.gif', '*.ico', '*.jpg', '*.png', '*.svg',
\  '*.rar', '*.zip', '*.tar', '*.tar.gz', '*.tar.xz', '*.tar.bz2',
\  '*.pdf', '*.doc', '*.docx', '*.ppt', '*.pptx', '*.xls',
\]


call denite#custom#var('file/rec', 'command', ['ag', '--follow', '--nocolor', '--nogroup', '-g', ''])
call denite#custom#option('default', 'prompt', 'λ')
call denite#custom#var('grep', 'command', ['ag'])
call denite#custom#var('grep', 'default_opts', ['-i', '--vimgrep'])
call denite#custom#var('grep', 'recursive_opts', [])
call denite#custom#var('grep', 'pattern_opt', [])
call denite#custom#var('grep', 'separator', ['--'])
call denite#custom#var('grep', 'final_opts', [])
call denite#custom#source('file_rec', 'sorters', ['sorter_sublime'])
call denite#custom#filter('matcher_ignore_globs', 'ignore_globs',
      \ [ '.git/', '.ropeproject/', '__pycache__/*', '*.pyc', 'node_modules/',
      \   'venv/', 'images/', '*.min.*', 'img/', 'fonts/', '*.png'])

nmap <LEADER><LEADER>fr :Denite -start-filter file/rec<CR>
nmap <LEADER><LEADER>b :Denite buffer <CR>
nmap <LEADER><LEADER>d :Denite directory_rec <CR>
nmap <LEADER><LEADER>ch :Denite command_history <CR>
nmap <LEADER><LEADER>f :Denite file <CR>

nnoremap <LEADER><LEADER>/ :Denite grep<CR>

autocmd FileType denite call s:denite_my_settings()
function! s:denite_my_settings() abort
  nnoremap <silent><buffer><expr> <CR>
  \ denite#do_map('do_action')
  nnoremap <silent><buffer><expr> d
  \ denite#do_map('do_action', 'delete')
  nnoremap <silent><buffer><expr> p
  \ denite#do_map('do_action', 'preview')
  nnoremap <silent><buffer><expr> q
  \ denite#do_map('quit')
  nnoremap <silent><buffer><expr> i
  \ denite#do_map('open_filter_buffer')
  nnoremap <silent><buffer><expr> <Space>
  \ denite#do_map('toggle_select').'j'
endfunction

nmap <F8> :TagbarToggle<CR>

autocmd FileType scss set iskeyword+=-


"-- FOLDING --
set foldmethod=syntax "syntax highlighting items specify folds
set foldcolumn=1 "defines 1 col at window left, to indicate folding
let javaScript_fold=1 "activate folding by JS syntax
set foldlevelstart=99 "start file with all folds opened


let g:header_field_author = 'Tamnil Saito Junior'
let g:header_field_author_email = 'tamnil@gmail.com'


let g:header_auto_add_header = 0
" let g:header_field_timestamp = 0
let g:header_field_modified_timestamp = 0
let g:header_field_modified_by = 0

" let g:user_emmet_leader_key=',' " uses ,, to expand emmet



let g:user_emmet_expandabbr_key='<Tab>'
imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")
