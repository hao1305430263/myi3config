" __  ____   __  _   ___	 _____ __  __ ____   ____
"|  \/  \ \ / / | \ | \ \   / /_ _|  \/  |  _ \ / ___|
"| |\/| |\ V /  |  \| |\ \ / / | || |\/| | |_) | |
"| |  | | | |   | |\  | \ V /  | || |  | |  _ <| |___
"|_|  |_| |_|   |_| \_|  \_/  |___|_|  |_|_| \_\\____|

" Author: @haouanbo
" my name is hao
" Checkout-list
" vim-esearch
" fmoralesc/worldslice
" SidOfc/mkdx

" ====================
" === Editor Setup ===
" ====================

" ===
" === System
" ===
"set clipboard=unnamedplus
let &t_ut=''
set autochdir

" ===
" === Editor behavior
" ===
set number		 " 显示行号
set relativenumber " 显示相对行号
set cursorline	 " 高亮当前行
set noexpandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent	 " 代码自动对齐
set list
" set listchars=tab:\| ,trail:▫
set nolist
set scrolloff=4
set ttimeoutlen=0
" set notimeout
" set timeoutlen=500
set viewoptions=cursor,folds,slash,unix
set wrap
set tw=0
set indentexpr=
set foldmethod=indent
set foldlevel=99
set foldenable
set formatoptions-=tc
set splitright
set splitbelow
set noshowmode
set showcmd
set wildmenu
set ignorecase
set smartcase
set shortmess+=c
set inccommand=split
set completeopt=longest,noinsert,menuone,noselect,preview
set lazyredraw "same as above
set visualbell
silent !mkdir -p ~/.config/nvim/tmp/backup
silent !mkdir -p ~/.config/nvim/tmp/undo
"silent !mkdir -p ~/.config/nvim/tmp/sessions
set backupdir=~/.config/nvim/tmp/backup,.
set directory=~/.config/nvim/tmp/backup,.
if has('persistent_undo')
	set undofile
	set undodir=~/.config/nvim/tmp/undo,.
endif
set colorcolumn=80
set updatetime=100
set virtualedit=block
set scrolloff=5 " 光标移动到 buffer 的顶部和底部时保持 3 行距离
set laststatus=2 " 启动显示状态行(1),总是显示状态行(2)

syntax enable
filetype plugin indent on


" ===
" === Terminal Behaviors
" ===
let g:neoterm_autoscroll = 1
autocmd TermOpen term://* startinsert
tnoremap <C-N> <C-\><C-N>
tnoremap <C-O> <C-\><C-N><C-O>
let g:terminal_color_0  = '#000000'
let g:terminal_color_1  = '#FF5555'
let g:terminal_color_2  = '#50FA7B'
let g:terminal_color_3  = '#F1FA8C'
let g:terminal_color_4  = '#BD93F9'
let g:terminal_color_5  = '#FF79C6'
let g:terminal_color_6  = '#8BE9FD'
let g:terminal_color_7  = '#BFBFBF'
let g:terminal_color_8  = '#4D4D4D'
let g:terminal_color_9  = '#FF6E67'
let g:terminal_color_10 = '#5AF78E'
let g:terminal_color_11 = '#F4F99D'
let g:terminal_color_12 = '#CAA9FA'
let g:terminal_color_13 = '#FF92D0'
let g:terminal_color_14 = '#9AEDFE'

" Save & quit
noremap Q :q<CR>
noremap <C-q> :qa<CR>
noremap S :w<CR>

" Open the vimrc file anytime
noremap <space>rc :e ~/.config/nvim/init.vim<CR>

" make Y to copy till the end of the line
nnoremap Y y$

" Copy to system clipboard
vnoremap Y "+y

" Indentation
nnoremap < <<
nnoremap > >>

" Folding
" noremap <silent> <LEADER>o za


" ===
" === Cursor Movement
" ===
" New cursor movement (the default arrow keys are used for resizing windows)
" K/J keys for 5 times u/e (faster navigation)
noremap <silent> K 5k
noremap <silent> J 5j

" N key: go to the start of the line
noremap <silent> H 0
" I key: go to the end of the line
noremap <silent> L $

" Faster in-line navigation
noremap W 5w
noremap B 5b

" Ctrl + U or E will move up/down the view port without moving the cursor
noremap <C-k> 5<C-y>
noremap <C-j> 5<C-e>

" ===
" === Insert Mode Cursor Movement
" ===
inoremap <C-a> <ESC>A


" ===
" === Command Mode Cursor Movement
" ===
cnoremap <C-a> <Home>
cnoremap <C-e> <End>
" cnoremap <C-p> <Up>
" cnoremap <C-n> <Down>
" cnoremap <C-b> <Left>
" cnoremap <C-f> <Right>
" cnoremap <M-b> <S-Left>
" cnoremap <M-w> <S-Right>


" ===
" === Searching
" ===
noremap - N
noremap = n


" ===
" === Window management
" ===
" Use <space> + new arrow keys for moving the cursor around windows
noremap <space>w <C-w>w
noremap <space>k <C-w>k
noremap <space>j <C-w>j
noremap <space>h <C-w>h
noremap <space>l <C-w>l

" Disable the default s key
noremap s <nop>

" split the screens to up (horizontal), down (horizontal), left (vertical), right (vertical)
noremap <space>sk :set nosplitbelow<CR>:split<CR>:set splitbelow<CR>
noremap <space>sj :set splitbelow<CR>:split<CR>
noremap <space>sh :set nosplitright<CR>:vsplit<CR>:set splitright<CR>
noremap <space>sl :set splitright<CR>:vsplit<CR>


" Press <SPACE> + q to close the window below the current window
noremap <space>q <C-w>j:q<CR>


" ===
" === Tab management
" ===
" Create a new tab with tu
noremap <leader>tu :tabe<CR>
" Move around tabs with tn and ti
noremap <leader>th :-tabnext<CR>
noremap <leader>tl :+tabnext<CR>
" Move the tabs with tmn and tmi
noremap <leader>tmh :-tabmove<CR>
noremap <leader>tml :+tabmove<CR>


" ===
" === Other useful stuff
" ===
" Open a new instance of st with the cwd
nnoremap \t :tabe<CR>:-tabmove<CR>:term sh -c 'st'<CR><C-\><C-N>:q<CR>

" Move the next character to the end of the line with ctrl+9
" inoremap <C-u> <ESC>lx$p

" Opening a terminal window
noremap <LEADER>/ :set splitbelow<CR>:split<CR>:res +10<CR>:term<CR>

" Press space twice to jump to the next '<++>' and edit it
" noremap <LEADER><LEADER> <Esc>/<++><CR>:nohlsearch<CR>c4l
noremap <C+j> <Esc>/<++><CR>:nohlsearch<CR>c4l

" Spelling Check with <space>sc
noremap <LEADER>sc :set spell!<CR>

" Press ` to change case (instead of ~)
noremap ` ~

" Auto change directory to current dir
autocmd BufEnter * silent! lcd %:p:h

" find and replace
noremap \s :%s//g<left><left>

" set wrap
" noremap <LEADER>sw :set wrap<CR>

" press f10 to show hlgroup
" map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
" \ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
" \ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

" ====================
" === 括号自动补全 ===
" ====================
inoremap ( ()<esc>i
inoremap [ []<esc>i
inoremap { {}<esc>i

" ====================
" ===   一键运行   ===
" ====================
" Compile function
noremap r :call CompileRunGcc()<CR>
func! CompileRunGcc()
	exec "w"
	if &filetype == 'c'
		exec "!g++ % -o %<"
		exec "!time ./%<"
	elseif &filetype == 'cpp'
		set splitbelow
		exec "!g++ -std=c++11 % -Wall -o %<"
		:sp
		:res -15
		:term ./%<
	elseif &filetype == 'java'
		exec "!javac %"
		exec "!time java %<"
	elseif &filetype == 'sh'
		:!time bash %
	elseif &filetype == 'python'
		set splitbelow
		:sp
		:term python3 %
	elseif &filetype == 'html'
		silent! exec "!".g:mkdp_browser." % &"
	elseif &filetype == 'markdown'
		exec "InstantMarkdownPreview"
	elseif &filetype == 'tex'
		silent! exec "VimtexStop"
		silent! exec "VimtexCompile"
	elseif &filetype == 'dart'
		exec "CocCommand flutter.run -d ".g:flutter_default_device
		silent! exec "CocCommand flutter.dev.openDevLog"
	elseif &filetype == 'javascript'
		set splitbelow
		:sp
		:term export DEBUG="INFO,ERROR,WARNING"; node --trace-warnings .
	elseif &filetype == 'go'
		set splitbelow
		:sp
		:term go run .
	endif
endfunc

" ===
" === Install Plugins with Vim-Plug
" ===

call plug#begin()
" themes
Plug 'morhetz/gruvbox' " gruvbox
Plug 'ajmwagar/vim-deus' " vim-deus

" Status line
Plug 'vim-airline/vim-airline'
Plug 'ojroques/vim-scrollstatus'
Plug 'vim-airline/vim-airline-themes'

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'honza/vim-snippets'

Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }
Plug 'hdima/python-syntax'                             " python-syntax
Plug 'luochen1990/rainbow'                             " rainbow
Plug 'junegunn/vim-easy-align'                         " vim-easy-align
Plug 'liuchengxu/vim-which-key'
Plug 'wakatime/vim-wakatime'
Plug 'preservim/nerdcommenter'
Plug 'ap/vim-css-color'
Plug 'mhinz/vim-startify'
Plug 'dhruvasagar/vim-table-mode'
Plug 'vim-latex/vim-latex'
Plug 'hotoo/pangu.vim'
Plug 'octol/vim-cpp-enhanced-highlight'                " c++ 语言高亮
Plug 'easymotion/vim-easymotion'
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'} " python 语言高亮
Plug 'rhysd/vim-clang-format'          " 代码格式化
Plug 'nathanaelkane/vim-indent-guides' " 显示缩进线
Plug 'tmhedberg/SimpylFold'            " python 代码折叠
Plug 'Vimjas/vim-python-pep8-indent'
Plug 'Chiel92/vim-autoformat'
Plug 'mg979/vim-visual-multi' " 多行输入
Plug 'yuweijun/vim-im'        " vimim 中文输入法插件
Plug 'yuweijun/vim-space'     " vim 中处理空格相关的工具
Plug 'ianding1/leetcode.vim'
Plug 'majutsushi/tagbar'
Plug 'mg979/vim-xtabline'
Plug 'Yggdroot/indentLine'    " 对齐指示线
Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }
Plug 'voldikss/vim-translator' " 翻译
call plug#end()

" ====================
" ===   主题设置   ===
" ====================

if has('termguicolors')
  set termguicolors
endif
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
colorscheme deus
let g:airline_theme='deus'
hi NonText ctermfg=gray guifg=grey10
set background=dark
highlight Comment cterm=italic gui=italic



" ====================
" ===   插件设置   ===
" ====================


" ===
" === translator
" ===
let g:translator_target_lang='zh'
" let g:translator_proxy_url = 'https://127.0.0.1:8889'
let g:translator_window_type='popup'
nmap <silent> <space>ts <Plug>TranslateW
vmap <silent> <space>ts <Plug>TranslateW



" ---------------------- ultisnips
let g:UltiSnipsExpandTrigger="<tab>"

" ---------------------- vimim
set imsearch=0


" ---------------------- majutsushi/tagbar
" nmap <leader>tt :TagbarToggle<CR>
nmap <F8> :TagbarToggle<CR>

" ---------------------- nathanaelkane/vim-indent-guides
hi IndentGuidesOdd  ctermbg=black
hi IndentGuidesEven ctermbg=darkgrey

" ---------------------- vim-easymotion
" nmap s <Plug>(easymotion-s2)
" s 来搜索单词


" ---------------------- vim-conda
let g:jedi#force_py_version = 2
let g:UltisnipsUsePythonVersion = 2

" ---------------------- vimim
let g:vimim_cloud = 'sogou'
let g:vimim_map = 'tab_as_gi'
" let g:vimim_mode = 'dynamic'
" let g:vimim_mycloud = 0
" " let g:vimim_plugin =
" let g:vimim_punctuation = 2
" let g:vimim_shuangpin = 0
" let g:vimim_toggle = 'pinyin,google,sogou'


" ---------------------- sirVer/ultisnips
" Trigger configuration. 
" Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
" let g:UltiSnipsExpandTrigger="<tab>"
" let g:UltiSnipsJumpForwardTrigger="<c-b>"
" let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" ---------------------- vim-latex
" required. this makes vim invoke latex-suite when you open a tex file.
filetype plugin on
 
" important: win32 users will need to have 'shellslash' set so that latex can be called correctly.
" set shellslash
 
" important: grep will sometimes skip displaying the file name if you search in a singe file. this will confuse latex-suite. set your grep program to always generate a file-name.
set grepprg=grep\ -nh\ $*
 
 " optional: this enables automatic indentation as you type.
filetype indent on
 
" optional: starting with vim 7, the filetype of empty .tex files defaults to 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" the following changes the default filetype back to 'tex':
let g:tex_flavor='latex'
 
" this is mostly a matter of taste. but latex looks good with just a bit of indentation.
set sw=2
 
" tip: if you write your \label's as \label{fig:something}, then if you type in \ref{fig: and press you will automatically cycle through all the figure labels. very useful!
set iskeyword+=:
" ===
" === vim-table-mode
" ===
"  <leader>tm 来启动该模式 
function! s:isatstartofline(mapping)
  let text_before_cursor = getline('.')[0 : col('.')-1]
  let mapping_pattern = '\v' . escape(a:mapping, '\')
  let comment_pattern = '\v' . escape(substitute(&l:commentstring, '%s.*$', '', ''), '\')
  return (text_before_cursor =~? '^' . ('\v(' . comment_pattern . '\v)?') . '\s*\v' . mapping_pattern . '\v$')
endfunction

inoreabbrev <expr><bar><bar>
          \ <sid>isatstartofline('\|\|') ?
          \ '<c-o>:TableModeEnable<cr><bar><space><bar><left><left>' : '<bar><bar>'
inoreabbrev <expr> __
          \ <sid>isatstartofline('__') ?
          \ '<c-o>:silent! TableModeDisable<cr>' : '__'

" ---------------------- markdown-preview.nvim
let g:mkdp_auto_start = 0
let g:mkdp_auto_close = 1
let g:mkdp_refresh_slow = 0
let g:mkdp_command_for_global = 0
let g:mkdp_open_to_the_world = 0
" let g:mkdp_browser = 'google-chrome-stable'

" ---------------------- nerd commenter 
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1
" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1


" =======================================================
" ---------------------- vim-which-key
" =======================================================
" let's say spc is your leader key and you use it to trigger vim-which-key
" nnoremap <silent> <leader> :whichkey '<space>'<cr>
set timeoutlen=500

let g:mapleader = "\<space>"
let g:maplocalleader = ','

call which_key#register('<Space>', "g:which_key_map")
nnoremap <silent> <leader> :<c-u>WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :<c-u>WhichKeyVisual '<Space>'<CR>
" Define prefix dictionary

let g:which_key_map =  {}

" Second level dictionaries:
" 'name' is a special field. It will define the name of the group, e.g., leader-f is the "+file" group.
" Unnamed groups will show a default empty string.

" Create menus based on existing mappings
" You can pass a descriptive text to an existing mapping.

let g:which_key_map.f = { 'name' : '+file' }

nnoremap <silent> <leader>fs :update<CR>
let g:which_key_map.f.s = 'save-file'

nnoremap <silent> <leader>fd :e $MYVIMRC<CR>
let g:which_key_map.f.d = 'open-vimrc'

nnoremap <silent> <leader>oq  :copen<CR>
nnoremap <silent> <leader>ol  :lopen<CR>
let g:which_key_map.o = {
      \ 'name' : '+open',
      \ 'q' : 'open-quickfix'    ,
      \ 'l' : 'open-locationlist',
      \ }

" let g:which_key_map.g = {
"       \ 'a' : 'vim-easyalign',
"       \ }

" Create menus not based on existing mappings:
" Provide commands(ex-command, <Plug>/<C-W>/<C-d> mapping, etc.) and descriptions for existing mappings
let g:which_key_map.b = {
      \ 'name' : '+buffer' ,
      \ '1' : ['b1'        , 'buffer 1']        ,
      \ '2' : ['b2'        , 'buffer 2']        ,
      \ 'd' : ['bd'        , 'delete-buffer']   ,
      \ 'f' : ['bfirst'    , 'first-buffer']    ,
      \ 'h' : ['Startify'  , 'home-buffer']     ,
      \ 'l' : ['blast'     , 'last-buffer']     ,
      \ 'n' : ['bnext'     , 'next-buffer']     ,
      \ 'p' : ['bprevious' , 'previous-buffer'] ,
      \ '?' : ['Buffers'   , 'fzf-buffer']      ,
      \ }

let g:which_key_map.l = {
      \ 'name' : '+lsp',
      \ 'f' : ['spacevim#lang#util#Format()'          , 'formatting']       ,
      \ 'r' : ['spacevim#lang#util#FindReferences()'  , 'references']       ,
      \ 'R' : ['spacevim#lang#util#Rename()'          , 'rename']           ,
      \ 's' : ['spacevim#lang#util#DocumentSymbol()'  , 'document-symbol']  ,
      \ 'S' : ['spacevim#lang#util#WorkspaceSymbol()' , 'workspace-symbol'] ,
      \ 'g' : {
        \ 'name': '+goto',
        \ 'd' : ['spacevim#lang#util#Definition()'     , 'definition']      ,
        \ 't' : ['spacevim#lang#util#TypeDefinition()' , 'type-definition'] ,
        \ 'i' : ['spacevim#lang#util#Implementation()' , 'implementation']  ,
        \ },
      \ }

" =======================================================
" ---------------------- vim-easy-align
" =======================================================
" start interactive easyalign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" start interactive easyalign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" =======================================================
" ---------------------- rainbow
" =======================================================
let g:rainbow_active = 1 "set to 0 if you want to enable it later via :rainbowtoggle

" =======================================================
" ---------------------- python-syntax
" =======================================================
let g:python_highlight_all = 1

" =======================================================
" ---------------------- vim-markdown
" =======================================================
let g:vim_markdown_toc_autofit = 1
let g:vim_markdown_folding_disabled = 1 " 禁止折叠
let g:vim_markdown_folding_style_pythonic = 1


" ===
" === vim-scrollstatus_size
" ===

let g:scrollstatus_size = 15
let g:airline_section_x = '%{ScrollStatus()} '
let g:airline_section_y = airline#section#create_right(['filetype'])
let g:airline_section_z = airline#section#create([
			\ '%#__accent_bold#%3l%#__restore__#/%L', ' ',
			\ '%#__accent_bold#%3v%#__restore__#/%3{virtcol("$") - 1}',
			\ ])


" ===
" === coc.nvim
" ===
" let g:python.terminal.activateEnvironment = false
" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

let g:coc_global_extensions = [
	\ 'coc-actions',
	\ 'coc-css',
	\ 'coc-diagnostic',
	\ 'coc-json',
	\ 'coc-lists',
	\ 'coc-python',
	\ 'coc-snippets',
	\ 'coc-syntax',
	\ 'coc-tasks',
	\ 'coc-todolist',
	\ 'coc-tslint-plugin',
	\ 'coc-tsserver',
	\ 'coc-vimlsp',
	\ 'coc-yaml',
	\ 'coc-yank']
" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
" <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
" nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
" nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of LS, ex: coc-tsserver
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>

" ===
" === coc-snippets
" ===
" Use <C-l> for trigger snippet expand.
imap <C-l> <Plug>(coc-snippets-expand)

" Use <C-j> for select text for visual placeholder of snippet.
vmap <C-j> <Plug>(coc-snippets-select)

" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<c-j>'

" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-k>'

" Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-j> <Plug>(coc-snippets-expand-jump)

" inoremap <silent><expr> <TAB>
"       \ pumvisible() ? coc#_select_confirm() :
"       \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
"       \ <SID>check_back_space() ? "\<TAB>" :
"       \ coc#refresh()
"
" function! s:check_back_space() abort
"   let col = col('.') - 1
"   return !col || getline('.')[col - 1]  =~# '\s'
" endfunction
"
" let g:coc_snippet_next = '<tab>'


" =======================================================
" ---------------------- nerdtree
" =======================================================
map <leader>n :NERDTreeToggle<cr>
let NERDTreeShowBookmarks=1 " 显示书签列表

" =======================================================
" ---------------------- nerdtree-git
" =======================================================
let g:NERDTreeGitStatusIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }





" =======================================================
" ---------------------- markdown 快捷键
" =======================================================
" | ,f | 跳到下一个标志符 |                            |
" | ,w |                  | 跳到下一个标志符，并且换行 |
" | ,n | 产生 g 分割线    | ----                       |
" | ,b | 加粗             | ****                       |
" | ,s | 加删除线         | ~~~~                       |
" | ,i | 斜体             | **                         |
" | ,d | 添加字符背景     | ``                         |
" | ,c | 产生代码块       |                            |
" | ,m | 插入 todo        | - [ ]                      |
" | ,p | 插入图片         | ![]                        |
" | ,a | 插入 todo        | []                         |

"autocmd filetype markdown map <leader>w yiwi[<esc>ea](<esc>pa)
" autocmd filetype markdown inoremap <buffer> ,f <esc>/<++><cr>:nohlsearch<cr>c4l
" autocmd filetype markdown inoremap <buffer> ,w <esc>/ <++><cr>:nohlsearch<cr>c5l<cr>
" autocmd filetype markdown inoremap <buffer> ,n ---<enter><enter>
" autocmd filetype markdown inoremap <buffer> ,b **** <++><esc>f*hi
" autocmd filetype markdown inoremap <buffer> ,s ~~~~ <++><esc>f~hi
" autocmd filetype markdown inoremap <buffer> ,i ** <++><esc>f*i
" autocmd filetype markdown inoremap <buffer> ,d `` <++><esc>f`i
" autocmd filetype markdown inoremap <buffer> ,c ```<enter><++><enter>```<enter><enter><++><esc>4ka
" autocmd filetype markdown inoremap <buffer> ,m - [ ] <enter><++><esc>ka
" autocmd filetype markdown inoremap <buffer> ,p ![](<++>) <++><esc>f[a
" autocmd filetype markdown inoremap <buffer> ,a [](<++>) <++><esc>f[a
" autocmd filetype markdown inoremap <buffer> ,1 #<space><enter><++><esc>ka
" autocmd filetype markdown inoremap <buffer> ,2 ##<space><enter><++><esc>ka
" autocmd filetype markdown inoremap <buffer> ,3 ###<space><enter><++><esc>ka
" autocmd filetype markdown inoremap <buffer> ,4 ####<space><enter><++><esc>ka
" autocmd filetype markdown inoremap <buffer> ,l --------<enter>
" autocmd filetype markdown inoremap <buffer> ,y >



