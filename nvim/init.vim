
"|  \/  \ \ / / | \ | \ \   / /_ _|  \/  |  _ \ / ___|
"| |\/| |\ V /  |  \| |\ \ / / | || |\/| | |_) | |
"| |  | | | |   | |\  | \ V /  | || |  | |  _ <| |___
"|_|  |_| |_|   |_| \_|  \_/  |___|_|  |_|_| \_\\____|

" Author: @haouanbo
" Checkout-list
" vim-esearch
" fmoralesc/worldslice
" SidOfc/mkdx

" ====================
" === Editor Setup ===
" ====================

" ===
" === 
" ===
let g:coc_disable_startup_warning = 1
" ===
" === python3
" ===
let g:python3_host_prog = '~/.miniconda3/envs/nvim/bin/python3'

" ===
" === System
" ===
"set clipboard=unnamedplus
let &t_ut=''
set autochdir

" ===
" === Editor behavior
" ===
set encoding=UTF-8
set number         " 显示行号
set relativenumber " 显示相对行号
set cursorline     " 高亮当前行
set noexpandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent " 代码自动对齐
" set list
" set listchars=tab:\|\ ,trail:▫
" set listchars=trail:▫
set nolist
set scrolloff=4
set timeoutlen=200
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
set ignorecase " 不区分大小写搜索
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


" mapleader
let g:mapleader = "\<space>"
let g:maplocalleader = ','

" Save & quit
noremap Q :q<CR>
noremap <C-q> :qa<CR>
noremap S :w<CR>

" Open the vimrc file anytime
nnoremap <leader>rc :e ~/.config/nvim/init.vim<CR>

" make Y to copy till the end of the line
nnoremap Y y$

" Copy to system clipboard
vnoremap Y "+y

" Indentation
nnoremap < <<
nnoremap > >>



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
noremap <leader>w <C-w>w
noremap <leader>k <C-w>k
noremap <leader>j <C-w>j
noremap <leader>h <C-w>h
noremap <leader>l <C-w>l

" Disable the default s key
noremap s <nop>

" split the screens to up (horizontal), down (horizontal), left (vertical), right (vertical)
noremap <leader>sk :set nosplitbelow<CR>:split<CR>:set splitbelow<CR>
noremap <leader>sj :set splitbelow<CR>:split<CR>
noremap <leader>sh :set nosplitright<CR>:vsplit<CR>:set splitright<CR>
noremap <leader>sl :set splitright<CR>:vsplit<CR>


" Press <SPACE> + q to close the window below the current window
noremap <leader>q <C-w>j:q<CR>


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
" nnoremap \t :tabe<CR>:-tabmove<CR>:term sh -c 'st'<CR><C-\><C-N>:q<CR>
nnoremap \t :tabe<CR>:-tabmove<CR>:term sh -c 'alacritty'<CR><C-\><C-N>:q<CR>

" Move the next character to the end of the line with ctrl+9
" inoremap <C-u> <ESC>lx$p

" Opening a terminal window
" noremap <LEADER>/ :set splitbelow<CR>:split<CR>:res +10<CR>:term<CR>
noremap <localleader>/ :set splitbelow<CR>:split<CR>:res +10<CR>:term<CR>

" Press space twice to jump to the next '<++>' and edit it
" noremap <LEADER><LEADER> <Esc>/<++><CR>:nohlsearch<CR>c4l
noremap <C+j> <Esc>/<++><CR>:nohlsearch<CR>c4l

" Spelling Check with <space>sc
noremap <space>sc :set spell!<CR>

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



" ===
" === 环境配置
" ===
" let g:python3_host_prog = "~/.conda/envs/py3/bin/python3.6"

" ====================
" ===   一键运行   ===
" ====================
" Compile function
noremap R :AsyncStop <CR>
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
    :AsyncRun -raw python %
		" set splitbelow
		" " :vsp
		" :sp
		" :term python3 %
		" " :!python3 %
	elseif &filetype == 'html'
		silent! exec "!".g:mkdp_browser." % &"
	elseif &filetype == 'markdown'
		" exec "InstantMarkdownPreview"
		exec "MarkdownPreview"
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
Plug 'rakr/vim-one'
Plug 'ajmwagar/vim-deus' " vim-deus
Plug 'dracula/vim', { 'as': 'dracula' }
" Plug 'pineapplegiant/spaceduck'

" Status line
Plug 'vim-airline/vim-airline'
Plug 'ojroques/vim-scrollstatus'
Plug 'vim-airline/vim-airline-themes'

Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'honza/vim-snippets' " 自动补全的代码块
" Plug 'SirVer/ultisnips'

Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}


Plug 'luochen1990/rainbow'     " rainbow
Plug 'junegunn/vim-easy-align' " vim-easy-align
Plug 'liuchengxu/vim-which-key'
Plug 'wakatime/vim-wakatime'
Plug 'preservim/nerdcommenter'
Plug 'ap/vim-css-color'
Plug 'mhinz/vim-startify'
Plug 'easymotion/vim-easymotion'
Plug 'dhruvasagar/vim-table-mode'
Plug 'lervag/vimtex'
Plug 'hotoo/pangu.vim'
Plug 'octol/vim-cpp-enhanced-highlight'                " c++ 语言高亮
Plug 'vim-python/python-syntax'     " python-syntax

Plug 'Chiel92/vim-autoformat'
Plug 'mg979/vim-visual-multi' " 多行输入
Plug 'yuweijun/vim-space'     " vim 中处理空格相关的工具
Plug 'majutsushi/tagbar'
" Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }
" Plug 'psliwka/vim-smoothie'
Plug 'voldikss/vim-translator' " 翻译

" 通过回车键选定大段落
Plug 'gcmt/wildfire.vim'
Plug 'tpope/vim-surround'

" leader 
Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }

Plug 'skywind3000/asyncrun.vim'
call plug#end()

" ====================
" ===   主题设置   ===
" ====================

if has('termguicolors')
  set termguicolors
endif
 " let $NVIM_TUI_ENABLE_TRUE_COLOR=1
colorscheme one
let g:airline_theme='one'
" colorscheme spaceduck
" let g:airline_theme = 'spaceduck'
hi NonText ctermfg=gray guifg=grey10
set background=dark
highlight Comment cterm=italic gui=italic



" ====================
" ===   插件设置   ===
" ====================

" ===
" === asyncrun 
" ===
let g:asyncrun_open=6


" ===
" === leaderf
" ===

" Show icons, icons are shown by default
let g:Lf_ShowDevIcons = 1
" For GUI vim, the icon font can be specify like this, for example
let g:Lf_DevIconsFont = "DroidSansMono Nerd Font Mono"
" If needs
set ambiwidth=double

" ===
" === markdown-preview.nvim
" ===
let g:mkdp_auto_start = 0 " 不自动开启预览
let g:mkdp_auto_close = 1 " 关闭 vim 后关闭预览
let g:mkdp_refresh_slow = 1 " 仅当离开插入模式后才更新预览
let g:mkdp_command_for_global = 0 " 不开启全局启用预览
" set to 1, preview server available to others in your network
" by default, the server listens on localhost (127.0.0.1)
" default: 0
let g:mkdp_open_to_the_world = 0

" use custom IP to open preview page
" useful when you work in remote vim and preview on local browser
" more detail see: https://github.com/iamcco/markdown-preview.nvim/pull/9
" default empty
let g:mkdp_open_ip = ''

" specify browser to open preview page
" default: ''
let g:mkdp_browser = ''

" set to 1, echo preview page url in command line when open preview page
" default is 0
let g:mkdp_echo_preview_url = 1

" a custom vim function name to open preview page
" this function will receive url as param
" default is empty
let g:mkdp_browserfunc = ''

let g:mkdp_preview_options = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {},
    \ 'disable_sync_scroll': 0,
    \ 'sync_scroll_type': 'middle',
    \ 'hide_yaml_meta': 1,
    \ 'sequence_diagrams': {},
    \ 'flowchart_diagrams': {},
    \ 'content_editable': v:false,
    \ 'disable_filename': 0
    \ }

" use a custom markdown style must be absolute path
" like '/Users/username/markdown.css' or expand('~/markdown.css')
let g:mkdp_markdown_css = ''

" use a custom highlight style must absolute path
" like '/Users/username/highlight.css' or expand('~/highlight.css')
let g:mkdp_highlight_css = ''

" use a custom port to start server or random for empty
let g:mkdp_port = ''

" preview page title
" ${name} will be replace with the file name
let g:mkdp_page_title = '「${name}」'




" ===
" === vimtex
" ===
let g:vimtex_fold_manual=1
" Prevent that vim detect a file with the tex suffix as a plaintex
let g:tex_flavor='latex'
" Set the viewer method
" let g:vimtex_view_method=''
let g:vimtex_compiler_progname = $HOME.'/miniconda3/envs/nvim/bin/nvr'
" 使用 xelatex 作为编译器
let g:vimtex_compiler_latexmk_engines = {'_':'-xelatex'}
let g:vimtex_compiler_latexrun_engines ={'_':'xelatex'}
" Never opened/closed the quickfix window automatically. The quickfix window shows the errors and/or warnings when compile, and we can open the quickfix windows use \le
let g:vimtex_quickfix_mode=0
" 最后两行开启自动隐藏功能,开启了这个功能，除了你光标所在的那一行之外，文本里夹杂的 LaTeX 代码就都会隐藏或者替换成其他符号
" set conceallevel=0
" set conceallevel=1
" let g:tex_conceal='abdmg'
" hi clear Conceal
" - `neovim-remote` / `nvr` is required for callbacks to work with neovim
" - Please also set |g:vimtex_compiler_progname| = 'nvr'
let g:vimtex_compiler_progname='nvr'

" nmap <space>


" ===
" === translator
" ===
let g:translator_target_lang='zh'
" let g:translator_proxy_url = 'https://127.0.0.1:8889'
let g:translator_window_type='popup'
nmap <silent> <localleader>t <Plug>TranslateW
" vmap <silent> <space>t <Plug>TranslateW


" ---------------------- majutsushi/tagbar
nmap <F8> :TagbarToggle<CR>


" ---------------------- sirVer/ultisnips
" Trigger configuration. 
" Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
" let g:UltiSnipsJumpForwardTrigger="<c-b>"
" let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"


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
let g:vim_markdown_math = 1 " latex 数学公式支持
let g:vim_markdown_strikethrough = 1 " 删除线支持


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
let g:airline#extensions#tabline#enabled = 1
let g:airline_extensions = []


" ===
" === ultisnips
" ===
" let g:UltiSnipsExpandTrigger="<tab>"
" let g:UltiSnipsJumpForwardTrigger="<c-b>"
" let g:UltiSnipsJumpBackwardTrigger="<c-z>"

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
	\ 'coc-css',
	\ 'coc-diagnostic',
	\ 'coc-json',
	\ 'coc-python',
	\ 'coc-syntax',
	\ 'coc-tasks',
	\ 'coc-todolist',
	\ 'coc-tslint-plugin',
	\ 'coc-tsserver',
	\ 'coc-vimtex',
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
"
" function! s:show_documentation()
"   if (index(['vim','help'], &filetype) >= 0)
"     execute 'h '.expand('<cword>')
"   else
"     call CocAction('doHover')
"   endif
" endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
" nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <localleader>f  <Plug>(coc-format-selected)
nmap <localleader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <localleader>a  <Plug>(coc-codeaction-selected)
nmap <localleader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <localleader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <localleader>qf  <Plug>(coc-fix-current)

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
nnoremap <silent><nowait> <localleader>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <localleader>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <localleader>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <localleader>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <localleader>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <localleader>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <localleader>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <localleader>p  :<C-u>CocListResume<CR>



" =======================================================
" ---------------------- nerdtree
" =======================================================
map <leader>n :NERDTreeToggle<cr>
let NERDTreeShowBookmarks=1 " 显示书签列表


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


" ===
" === vim-which-key
" ===

call which_key#register('<Space>', "g:which_key_map")
nnoremap <silent> <leader> :<c-u>WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :<c-u>WhichKeyVisual '<Space>'<CR>
nnoremap <silent> <localleader> :<c-u>WhichKey  ','<CR>
vnoremap <silent> <localleader> :<c-u>WhichKey  ','<CR>
nnoremap <silent> <C> :<c-u>whichkey  ','<cr>

" Define prefix dictionary
let g:which_key_map =  {}
let g:which_key_map.r = { 'name' : '开启其他文件夹' }
let g:which_key_map.r.c = 'open-my-vimrc'

let g:which_key_map.t = { 'name' : '+file' }
let g:which_key_map.t = '翻译'

let g:which_key_map.w = '移动光标到下一个窗口'
let g:which_key_map.h = '移动光标到左侧窗口'
let g:which_key_map.j = '移动光标到下侧窗口'
let g:which_key_map.k = '移动光标到上侧窗口'
let g:which_key_map.l = '移动光标到右侧窗口'

let g:which_key_map.n = '开闭文件栏'

let g:which_key_map.s = { 'name' : '创造新窗口' }
let g:which_key_map.s.h = '在左侧创造新窗口'
let g:which_key_map.s.j = '在下侧创造新窗口'
let g:which_key_map.s.k = '在上侧创造新窗口'
let g:which_key_map.s.l = '在右侧创造新窗口'

let g:which_key_map.t = { 
						\ 'name' : '移动tab' }
let g:which_key_map.t.h = '打开左侧tab'
let g:which_key_map.t.l = '打开右侧tab'
let g:which_key_map.t.m = { 'name' : '移动tab' }
let g:which_key_map.t.m.h = '向左移动tab'
let g:which_key_map.t.m.l = '向右移动tab'


"##### auto fcitx  ###########
let g:input_toggle = 1
function! Fcitx2en()
   let s:input_status = system("fcitx-remote")
   if s:input_status == 2
      let g:input_toggle = 1
      let l:a = system("fcitx-remote -c")
   endif
endfunction

function! Fcitx2zh()
   let s:input_status = system("fcitx-remote")
   if s:input_status != 2 && g:input_toggle == 1
      let l:a = system("fcitx-remote -o")
      let g:input_toggle = 0
   endif
endfunction

"退出插入模式
autocmd InsertLeave * call Fcitx2en()
"进入插入模式
autocmd InsertEnter * call Fcitx2en()
"##### auto fcitx end ######
