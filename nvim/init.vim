" ----------------------- 插件
call plug#begin()
" themes
Plug 'junegunn/seoul256.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'kkpmw/sacredforest-vim'
Plug 'NLKNguyen/papercolor-theme' " PaperColor
Plug 'morhetz/gruvbox' " gruvbox
Plug 'joshdick/onedark.vim' " onedark
Plug 'flazz/vim-colorschemes' " vim-colorschemes
Plug 'nightsense/stellarized' " stellarized
Plug 'nightsense/cosmic_latte'
Plug 'ayu-theme/ayu-vim'
Plug 'tyrannicaltoucan/vim-quantum'
Plug 'sainnhe/gruvbox-material' " gruvbox-material
" coc
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'honza/vim-snippets'
" lightline
Plug 'itchyny/lightline.vim'
" nerdtree
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
" markdown
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }
" python-syntax
Plug 'hdima/python-syntax'
" rainbow
Plug 'luochen1990/rainbow'
" vim-easy-align
Plug 'junegunn/vim-easy-align'
" vim-which-key
Plug 'liuchengxu/vim-which-key'
" wakatime
Plug 'wakatime/vim-wakatime'
" nerd commenter
Plug 'preservim/nerdcommenter'
" css color
Plug 'ap/vim-css-color'
" vim-startify
Plug 'mhinz/vim-startify'
" ianva/vim-youdao-translater
Plug 'ianva/vim-youdao-translater'
" vim-table-mode
Plug 'dhruvasagar/vim-table-mode'
Plug 'vim-latex/vim-latex'
Plug 'hotoo/pangu.vim'
Plug 'octol/vim-cpp-enhanced-highlight' " c++ 语言高亮
Plug 'easymotion/vim-easymotion'
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'} " python 语言高亮
Plug 'rhysd/vim-clang-format' " 代码格式化
Plug 'nathanaelkane/vim-indent-guides' " 显示缩进线
Plug 'tmhedberg/SimpylFold' " python 代码折叠
Plug 'Vimjas/vim-python-pep8-indent'
Plug 'Chiel92/vim-autoformat'
Plug 'mg979/vim-visual-multi' " 多行输入
" Plug 'yianwillis/vimcdoc' " vim 中文计划
Plug 'yuweijun/vim-im' " vimim 中文输入法插件
Plug 'yuweijun/vim-space' " vim 中处理空格相关的工具
" Plug 'vim-scripts/VimIM' " vim 中文输入法插件
Plug 'ianding1/leetcode.vim'
Plug 'majutsushi/tagbar'
Plug 'mg979/vim-xtabline'


call plug#end()

" let g:pep8_map='F8'



" ---------------------- majutsushi/tagbar
" nmap <leader>tt :TagbarToggle<CR>
nmap <F8> :TagbarToggle<CR>




" ---------------------- leetcode.vim
let g:leetcode_china=1 " 设置为中国区
let g:leetcode_solution_filetype='python3'
" let g:leetcode_browser='chrome'
let g:leetcode_browser='firefox'

" nnoremap <leader>l :LeetCodeList<cr>
" nnoremap <leader>lt :LeetCodeTest<cr>
" nnoremap <leader>ls :LeetCodeSubmit<cr>
" nnoremap <leader>lei :LeetCodeSignIn<cr>


" ---------------------- nathanaelkane/vim-indent-guides
hi IndentGuidesOdd  ctermbg=black
hi IndentGuidesEven ctermbg=darkgrey

" ---------------------- vim-easymotion
nmap s <Plug>(easymotion-s2)  
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



" ---------------------- lightline
" let g:lightline = {
"       \ 'colorscheme': 'seoul256',
"       \ }

" ---------------------- sirVer/ultisnips
" Trigger configuration. 
" Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
" let g:UltiSnipsExpandTrigger="<tab>"
" let g:UltiSnipsJumpForwardTrigger="<c-b>"
" let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" " ---------------------- vim-conda
" let g:jedi#force_py_version = 2
" let g:UltisnipsUsePythonVersion = 2
" map <F4> :CondaChangeEnv<CR>
" " ---------------------- vim-latex-live-preview
" " pdf viewer
" let g:livepreview_previewer = 'zathura'
" " tex engine
" let g:livepreview_engine = 'xelatex'
" " autocmd 禁用光标停止的时候自动编译
" let g:livepreview_cursorhold_recompile = 0

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

" ---------------------- vim-table-mode 
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

" ---------------------- vim-youdao-translater
vnoremap <silent> <c-t> :<c-u>Ydv<cr>
nnoremap <silent> <c-t> :<c-u>Ydc<cr>
noremap <leader>yd :<c-u>Yde<cr>

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

let g:which_key_map.s = {
      \ 'a' : '快速添加中英文字符间空格',
      \ }
let g:which_key_map.d = {
      \ 'a' : '快速添加中英文字符间空格',
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


" =======================================================
" ---------------------- coc 
" =======================================================
" let g:python.terminal.activateEnvironment = false
" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

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
nnoremap <silent> K :call <SID>show_documentation()<CR>

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
nmap <leader>rn <Plug>(coc-rename)

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

" ======================+================================
" ---------------------- coc-snippets
" =======================================================
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
" ---------------------- ENV
" =======================================================
" let g:python3_host_prog='/home/haouanbo/.conda/envs/mypython3/bin/python3'


" =======================================================
" ---------------------- SETTING
" =======================================================
set buftype=" "
syntax enable
set nu
set wrap
set cursorline " 高亮当前行
" set relativenumber " 显示相对行号
" 自动换行
set wrap
" 代码自动对齐
set autoindent
set smartindent
" 自动对齐
set tabstop=4
set shiftwidth=4
" 匹配模式，括号匹配等
set showmatch
set colorcolumn=80 " 显示 80 的分界竖线
" 编辑过程中，在右下角显示光标所在位置的状态行
" set ruler
" set termguicolors
" 设置半透明 
" hi normal ctermfg=252 ctermbg=none
set scrolloff=5 " 光标移动到 buffer 的顶部和底部时保持 3 行距离
set laststatus=2 " 启动显示状态行(1),总是显示状态行(2)
set nocompatible "去掉讨厌的有关 vi 一致性模式，避免以前版本的一些 bug 和局限
set nocompatible " 不与 vi 兼容(采用 vim 自己的操作命令)。
" set clipboard=unnamed " 使用系统剪切板

set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8


" =======================================================
" ---------------------- THEME
" =======================================================

if has('termguicolors')
  set termguicolors
endif
" set t_co=256
" colorscheme seoul256
" colorscheme dracula
colorscheme gruvbox
" colorscheme stellarized
" colorscheme PaperColor
" colorscheme gruvbox-material
" let g:gruvbox_termcolors=16
" colorscheme onedark

" For dark version.
set background=dark

highlight Comment cterm=italic gui=italic



" =======================================================
" ---------------------- 一键运行
" =======================================================
noremap r :call CompileRunGcc()<cr>
func! CompileRunGcc()
	exec "w"
	if &filetype == 'c'
		exec "!g++ % -o %<"
		exec "!time ./%<"
	elseif &filetype == 'cpp'
		set splitbelow
		" exec "!g++ -std=c++11 % -wall -o %<"
		" exec "!g++ -std=c++11 % -o %<"
		exec "!g++ -std=c++11 % -o %<"
	    :sp
	    :res -10
	    :term ./%<
	" elseif &filetype == 'java'
	"     exec "!javac %"
	"     exec "!time java %<"
	" elseif &filetype == 'sh'
	"     :!time bash %
	elseif &filetype == 'python'
		set splitbelow
		:sp
		:res -10
		:term python3 %
		" :term /home/haouanbo/.conda/envs/mypython3/bin/pydoc3.8 %
	elseif &filetype == 'py'
		set splitbelow
		:sp
		:term python3 %
		" :term /home/haouanbo/.conda/envs/mypython3/bin/pydoc3.8 %
	" elseif &filetype == 'html'
	"     silent! exec "!chromium % &"
	elseif &filetype == 'md'
		exec "MarkdownPreview"
	elseif &filetype == 'markdown'
		exec "MarkdownPreview"
	elseif &filetype == 'tex'
		" set splitbelow
		" :sp
		" :res -10
		" exec "!xelatex -synctex=1 -interaction=nonstopmode "main".tex"
		exec "!xelatex -synctex=1 -interaction=nonstopmode %"
		" exec "!xelatex -synctex=1 -interaction=nonstopmode /home/haouanbo/Nutstore/mydate/毕设/cquthesis/main.tex"
	" elseif &filetype == 'tex'
		" exec "!xelatex -synctex=1 -interaction=nonstopmode "main".tex"
	"     silent! exec "vimtexstop"
	"     silent! exec "vimtexcompile"
	" elseif &filetype == 'go'
	"     set splitbelow
	"     :sp
	"     :term go run %
	elseif &filetype == 'html'
    	exec '!firefox % &'
	endif
endfunc

vnoremap Y "+y

" =======================================================
" ---------------------- markdown 快捷键
" =======================================================
" | ,f | 跳到下一个标志符 |                            |
" | ,w |                  | 跳到下一个标志符，并且换行 |
" | ,n | 产生 g 分割线      | ----                       |
" | ,b | 加粗             | ****                       |
" | ,s | 加删除线         | ~~~~                       |
" | ,i | 斜体             | **                         |
" | ,d | 添加字符背景     | ``                         |
" | ,c | 产生代码块       |                            |
" | ,m | 插入 todo         | - [ ]                      |
" | ,p | 插入图片         | ![]                        |
" | ,a | 插入 todo         | []                         |

"autocmd filetype markdown map <leader>w yiwi[<esc>ea](<esc>pa)
autocmd filetype markdown inoremap <buffer> ,f <esc>/<++><cr>:nohlsearch<cr>c4l
autocmd filetype markdown inoremap <buffer> ,w <esc>/ <++><cr>:nohlsearch<cr>c5l<cr>
autocmd filetype markdown inoremap <buffer> ,n ---<enter><enter>
autocmd filetype markdown inoremap <buffer> ,b **** <++><esc>f*hi
autocmd filetype markdown inoremap <buffer> ,s ~~~~ <++><esc>f~hi
autocmd filetype markdown inoremap <buffer> ,i ** <++><esc>f*i
autocmd filetype markdown inoremap <buffer> ,d `` <++><esc>f`i
autocmd filetype markdown inoremap <buffer> ,c ```<enter><++><enter>```<enter><enter><++><esc>4ka
autocmd filetype markdown inoremap <buffer> ,m - [ ] <enter><++><esc>ka
autocmd filetype markdown inoremap <buffer> ,p ![](<++>) <++><esc>f[a
autocmd filetype markdown inoremap <buffer> ,a [](<++>) <++><esc>f[a
autocmd filetype markdown inoremap <buffer> ,1 #<space><enter><++><esc>ka
autocmd filetype markdown inoremap <buffer> ,2 ##<space><enter><++><esc>ka
autocmd filetype markdown inoremap <buffer> ,3 ###<space><enter><++><esc>ka
autocmd filetype markdown inoremap <buffer> ,4 ####<space><enter><++><esc>ka
autocmd filetype markdown inoremap <buffer> ,l --------<enter>
autocmd filetype markdown inoremap <buffer> ,y > 


" =======================================================
" ---------------------- 括号自动补全
" =======================================================
inoremap ( ()<esc>i
inoremap [ []<esc>i
inoremap { {}<esc>i
" inoremap < <><esc>i
inoremap <C-j> <esc>o

" =======================================================
" ---------------------- 括号自动补全
" =======================================================
" nmap <F3> i<C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR><Esc>
" imap <F3> <C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR>
nmap <F3> i<C-R>=strftime("%Y-%m-%d %H:%M:%S")<CR><Esc>
imap <F3> <C-R>=strftime("%Y-%m-%d %H:%M:%S")<CR>
" imap <leader>d <C-R>=strftime("%Y-%m-%d %H:%M:%S")<CR>


" " =======================================================
" "##### auto fcitx  ###########
" " =======================================================
" let g:input_toggle = 0
" function! Fcitx2en()
"    let s:input_status = system("fcitx-remote")
"    if s:input_status == 2
"       let g:input_toggle = 1
"       let l:a = system("fcitx-remote -c")
"    endif
" endfunction
"
" function! Fcitx2zh()
"    let s:input_status = system("fcitx-remote")
"    if s:input_status != 2 && g:input_toggle == 1
"       let l:a = system("fcitx-remote -o")
"       let g:input_toggle = 0
"    endif
" endfunction
"
" set ttimeoutlen=150
" "退出插入模式
" autocmd InsertLeave * call Fcitx2en()
" "进入插入模式
" " autocmd InsertEnter * call Fcitx2zh()
" "##### auto fcitx end ######

