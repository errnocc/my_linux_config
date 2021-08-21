"General settings

"------------------------------------------
"编码格式
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8

"显示行号
set number

"显示当前行
set cul

"打开命令行窗口
set cedit=\<Esc>

"括号匹配
set showmatch

"Tab键为4空格,自动缩进
set tabstop=4
set shiftwidth=4
set autoindent

"忽略大小写
set ignorecase

"打开高亮
syntax on

"打开拼写检查
"setlocal spell spelllang=en_us
"设置粘贴模式(自动缩进失效)
"set paste

"显示光标位置
set ruler
"去掉声响
set vb t_vb=

"设置<leader>键 = <space>
let g:mapleader = " "

"打开文件类型检测
filetype plugin indent on

"设置ctags
"set tags=/home/lian/OpenCode

"添加调试
packadd termdebug

"允许鼠标
"set mouse=a
"显示状态栏
set laststatus=2
"终端开启256色彩支持
set t_Co=256
"命令行显示输入的命令
set showcmd

"命令行不显示vim当前模式
set noshowmode 

"设置zsh风格补全
set wildmenu
set wildmode=full

"设置和系统相同的复制粘贴
set clipboard=unnamed

"输入字符串就显示匹配点
set incsearch
"高亮度搜寻
set hlsearch

"将新创建的窗口放在当前窗口下面
set splitbelow

"keyboard mapping
"---------------------------------------------------------------
"代码调试快捷键
map <leader>cp :call CompileRunGcc()<cr>
func! CompileRunGcc()
	exec "w" 
	if &filetype == 'c' 
		exec '!gcc -g -fdiagnostics-color -Wall % -o %<.out'
	elseif &filetype == 'cpp'
		exec '!g++ -g -fdiagnostics-color -Wall % -o %<.out'
	endif                                                                              
endfunc 
"终端支持
nnoremap <leader>tm :term zsh<cr>

"termdebug切换窗口
"tnoremap <leader><leader> <c-w>

"debug布局
autocmd filetype cpp nnoremap <leader>td :Termdebug<cr>
autocmd filetype c nnoremap <leader>td :Termdebug<cr>

"终端切换normal模式翻页
tnoremap jj <c-\><c-n>

"终端快捷键
"autocmd filetype cpp :term zsh

"括号居中
imap () ()<left>
imap [] []<left>
imap {} {}<left>
imap "" ""<left>
imap '' ''<left>
imap <> <><left>
"tex文件的公式
autocmd filetype tex imap $$ $$<left>

cmap () ()<left>
cmap [] []<left>
cmap {} {}<left>
cmap "" ""<left>
cmap '' ''<left>
cmap <> <><left>

"大小写转换
nmap <leader>u guaw
nmap <leader>u guaw

nmap <leader>tex :LLPStartPreview<cr>

"设置快速退出
map <leader>wq :wq<cr>

"二进制文件打开
nnoremap <leader>b :%!xxd<cr>

"二进制文件恢复
nnoremap <leader>r :%!xxd -r<cr>

"跳转
nnoremap <leader>i <c-i>
nnoremap <leader>o <c-o>

"debug
"nnoremap <leader>td :termdebug<cr>

"翻页
nnoremap <leader>j <c-f>
nnoremap <leader>k <c-b>

"关闭vim
nnoremap <leader>q :q!<CR>

"打开.vimrc
nnoremap <leader>m :vsplit $MYVIMRC<cr>
nnoremap <leader>r :source $MYVIMRC<cr>

"切换buff
nnoremap <leader>h :bp<CR>
nnoremap <leader>l :bn<CR>

"行首行尾
nnoremap <leader>hh ^
nnoremap <leader>ll $

"取消搜索高亮
nnoremap <leader>nh :nohlsearch<cr>

"自动缩进
nnoremap <leader>= gg=G

"切换窗口
nnoremap <leader><leader> <c-w>

nnoremap <leader>b :bp<bar>bd #<CR>

"映射space dd 为dd-O
nnoremap <leader>dd ddO

"快速保存
nnoremap <leader>w :w<CR>

"命令行显示可选项
cnoremap <leader>h <c-d>

"关闭分屏
nnoremap <leader>d ZZ

"记住上次打开位置
if has("autocmd")
	autocmd BufReadPost *
				\ if line("'\"") > 0 && line("'\"") <= line("$") |
				\   exe "normal g`\"" |
				\ endif
endif

"vimrc配置生效
"autocmd BufWritePost $MYVIMRC source $MYVIMRC
"
"Plugin settings
"--------------------------------------------------------------
"

call plug#begin('~/.vim/plugged')

Plug 'ajmwagar/vim-deus'
"variable-color
Plug 'jaxbot/semantic-highlight.vim'

"icons 
Plug 'ryanoasis/vim-devicons'


"vim translater
Plug 'ianva/vim-youdao-translater'

"c++高亮
Plug 'octol/vim-cpp-enhanced-highlight'

"缩进显示
Plug 'yggdroot/indentline'

"vim背景集合
"Plug 'flazz/vim-colorschemes'

"vim中文手册
Plug 'yianwillis/vimcdoc'

"LaTeX
Plug 'lervag/vimtex', {'tag': 'v1.6'}
Plug 'jcf/vim-latex'
Plug 'xuhdev/vim-latex-live-preview'
Plug 'KeitaNakamura/tex-conceal.vim', {'for': 'tex'}
"Plug 'wjakob/wjakob.vim'
""
"代码补全
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"fzf模糊查找
"Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

"代码调试
"Plug 'puremourning/vimspector'

"代码风格
Plug 'mhartington/oceanic-next'
Plug 'morhetz/gruvbox'

"代码小片段
Plug 'honza/vim-snippets'
Plug 'SirVer/ultisnips'

"状态栏
Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'

"Plug 'preservim/nerdtree'"文件树

"快速注释
Plug 'preservim/nerdcommenter'

"vim开始页面
Plug 'mhinz/vim-startify'

"彩虹括号(骚包)
Plug 'luochen1990/rainbow'

"vim-terminal插件
"Plug 'skywind3000/vim-terminal-help'


"Markdown
Plug 'godlygeek/tabular' "必要插件，安装在vim-markdown前面
Plug 'plasticboy/vim-markdown'

"光标生成目录
Plug 'mzlogin/vim-markdown-toc'

"markdown-preview
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

call plug#end()

"color setting
"------------------------------------------
"colorscheme gruvbox
"colorscheme OceanicNext
"colorscheme molokai

syntax enable

"for vim 7
set t_Co=256

"for vim 8
if (has("termguicolors"))
	set termguicolors
endif

"let g:oceanic_next_terminal_bold = 1
let g:oceanic_next_terminal_italic = 1


"gruvboxThrme
set bg=dark

"setting------------------------------------
"semantic setiing
nnoremap <Leader>s :SemanticHighlightToggle<cr>

"translator setting
vnoremap <silent> <C-T> :<C-u>Ydv<CR>
nnoremap <silent> <C-T> :<C-u>Ydc<CR>
noremap <leader>yd :<C-u>Yde<CR>

nmap <Leader>t <Plug>(coc-translator-p)
vmap <Leader>t <Plug>(coc-translator-pv)
" echo
nmap <Leader>e <Plug>(coc-translator-e)
vmap <Leader>e <Plug>(coc-translator-ev)
" replace
nmap <Leader>r <Plug>(coc-translator-r)
vmap <Leader>r <Plug>(coc-translator-rv)

"cpp-highlight
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_posix_standard = 1
let g:cpp_experimental_template_highlight = 1
let g:cpp_concepts_highlight = 1
let c_no_curly_error=1



"rainbow setting
let g:rainbow_active = 1

	let g:rainbow_conf = {
	\	'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
	\	'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
	\	'operators': '_,_',
	\	'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
	\	'separately': {
	\		'*': {},
	\		'tex': {
	\			'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
	\		},
	\		'lisp': {
	\			'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
	\		},
	\		'vim': {
	\			'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
	\		},
	\		'html': {
	\			'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
	\		},
	\		'css': 0,
	\	}
	\}



"indentline setting
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
let g:indentLine_defaultGroup = 'SpecialKey'

"vimtex配置
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_view_general_viewer = 'zathura'
let g:vimtex_quickfix_mode=0
let g:vimtex_compiler_latexmk_engines = {'_':'-xelatex'}
let g:vimtex_compiler_latexrun_engines ={'_':'xelatex'}
"let g:Tex_CompileRule_pdf = 'xelatex -synctex=1 --interaction=nonstopmode $*'

"vim-latex
let g:livepreview_previewer = 'zathura' 
let g:livepreview_engine = 'xelatex'
autocmd filetype tex setl updatetime=1

"tex-conceal
let g:tex_conceal_frac=1
set conceallevel=2
let g:tex_conceal='abdmg'
let g:tex_superscripts= "[0-9a-zA-W.,:;+-<>/()=]"
let g:tex_subscripts= "[0-9aehijklmnoprstuvx,+-/().]"

"markdown-preview
let g:mkdp_auto_start = 1
let g:mkdp_auto_close = 1
let g:mkdp_refresh_slow = 0
let g:mkdp_command_for_global = 0
let g:mkdp_open_to_the_world = 0
let g:mkdp_open_ip = ''
let g:mkdp_browser = 'google-chrome'
let g:mkdp_echo_preview_url = 0
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
let g:mkdp_markdown_css = ''
let g:mkdp_highlight_css = ''
let g:mkdp_port = ''
let g:mkdp_page_title = '「${name}」'
let g:mkdp_filetypes = ['markdown']

"Termdebug setting
"竖屏显示
let g:termdebug_wide = 1

"rainbow 配置
"打开rainbow
let g:rainbow_active = 1
"白嫖作者的配置
"let g:rainbow_conf = {
"\	'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
"\	'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
"\	'operators': '_,_',
"\	'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
"\	'separately': {
"\		'*': {},
"\		'tex': {
"\			'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
"\		},
"\		'lisp': {
"\			'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
"\		},
"\		'vim': {
"\			'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
"\		},
"\		'html': {
"\			'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
"\		},
"\		'css': 0,
"\	}
"\}
""nerdcommenter配置
"创建默认映射
let g:NERDCreateDefaultMappings = 1
"默认情况下在注释定界符后添加空格
"let g:NERDSpaceDelims = 1 
"对紧凑的多行注释不使用紧凑语法
let g:NERDCompactSexyComs = 0 
"对齐行注释定界符向左对齐下面的代码缩进
let g:NERDDefaultAlign = 'left' 
"将语言设置为默认使用其备用定界符
let g:NERDAltDelims_java = 1
"允许注释和倒空行
let g:NERDCommentEmptyLines = 1
"启用NERDCommenterToggle以检查所有选定的行是否已注释
let g:NERDToggleCheckAllLines = 1

"打开或关闭startify
let g:startify_disable_at_vimenter = 0
"客制化头部
"let g:startify_custom_header =
			"\ 'startify#center(startify#fortune#cowsay())'

let g:startify_custom_header = [
			\'',
			\'  /$$$$$$             /$$$$$$   /$$$$$$ ',
			\' /$$$_  $$           /$$__  $$ /$$__  $$',
			\'| $$$$\ $$ /$$   /$$| $$  \__/| $$  \__/',
			\'| $$ $$ $$|  $$ /$$/| $$      | $$      ',
			\'| $$\ $$$$ \  $$$$/ | $$      | $$      ',
			\'| $$ \ $$$  >$$  $$ | $$    $$| $$    $$',
			\'|  $$$$$$/ /$$/\  $$|  $$$$$$/|  $$$$$$/',
			\' \______/ |__/  \__/ \______/  \______/ ',
			\'',
			\''
			\]
"nerdtree配置
"打开nerdtree,光标在文件上
"autocmd VimEnter * NERDTree | wincmd p
""退出nerdtree
"autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
"    \ quit | endif
"
"vim-airline
"顶部开启airline
let g:airline#extensions#tabline#enabled = 1
"airline格式
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'unique_tail'
"let g:airline_theme='deus'
"let g:airline_theme='light'
"tab键切换文件
nmap <tab> :bn<cr>

"vim-snips
let g:UltiSnipsExpandTrigger="<c-g>"
let g:UltiSnipsJumpForwardTrigger="<c-h>"
let g:UltiSnipsJumpBackwardTrigger="<c-l>"
"let g:UltiSnipsSnippetDirectories=["~/.vim/plugged/vim-snippets/snippets"]

"coc 插件配置(官网推荐配置)
let g:coc_global_extensions = [
			\'coc-python',
			\'coc-vimlsp',
			\'coc-clangd',
			\'coc-html',
			\'coc-highlight',
			\'coc-explorer',
			\'coc-json',
			\'coc-word',
			\'coc-vimtex',
			\'coc-marketplace'
			\]

"coc-explorer 键位映射
nnoremap <leader>s :CocCommand explorer<CR>

" TextEdit might fail if hidden is not set.
"set hidden

" Some servers have issues with backup files, see #649.
"set nobackup
"set nowritebackup

" Give more space for displaying messages.
"set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=100

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

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
			\: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

"使用<leader>ek和<leader>ej上下定位错误
nmap <silent> <leader>ek <Plug>(coc-diagnostic-prev)
nmap <silent> <leader>ej <Plug>(coc-diagnostic-next)

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
	elseif (coc#rpc#ready())
		call CocActionAsync('doHover')
	else
		execute '!' . &keywordprg . " " . expand('<cword>')
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

" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
	nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
	nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
	inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
	inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
	vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
	vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
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
"set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
"" Show all diagnostics.
"nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
"" Manage extensions.
"nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
"" Show commands.
"nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
"" Find symbol of current document.
""nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
"" Search workspace symbols.
"nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
"" Do default action for next item.
"nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
"" Do default action for previous item.
"nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
"" Resume latest coc list.
"nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>
"
"
