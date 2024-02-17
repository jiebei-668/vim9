if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8


    " Uncomment the next line to make Vim more Vi-compatible
    " NOTE: debian.vim sets 'nocompatible'. Setting 'compatible' changes numerous
    " options, so any other options should be set AFTER setting 'compatible'.
    set nocompatible

    " Vim5 and later versions support syntax highlighting. Uncommenting the
    " following enables syntax highlighting by default.
    " detect file type
    filetype on
    filetype plugin on

    " If using a dark background within the editing area and syntax highlighting
    " turn on this option as well
"    set background=dark

    " Uncomment the following to have Vim jump to the last position when
    " reopening a file
    if has("autocmd")
      au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
      "have Vim load indentation rules and plugins according to the detected filetype
      filetype plugin indent on
    endif
	
    " The following are commented out as they cause vim to behave a lot
    " differently from regular Vi. They are highly recommended though.
	


    set ignorecase        " 搜索模式里忽略大小写
    set smartcase        " 如果搜索模式包含大写字符，不使用 'ignorecase' 选项。只有在输入搜索模式并且打开 'ignorecase' 选项时才会使用。
    "set autowrite        " 自动把内容写回文件: 如果文件被修改过，在每个 :next、:rewind、:last、:first、:previous、:stop、:suspend、:tag、:!、:make、CTRL-] 和 CTRL-^命令时进行；用 :buffer、CTRL-O、CTRL-I、'{A-Z0-9} 或 `{A-Z0-9} 命令转到别的文件时亦然。
    set autoindent        " 设置自动对齐(缩进)：即每行的缩进值与上一行相等；使用 noautoindent 取消设置
    "set smartindent        " 智能对齐方式
    set tabstop=4        " 设置制表符(tab键)的宽度
    set softtabstop=4     " 设置软制表符的宽度
    set shiftwidth=4    " (自动) 缩进使用的4个空格
    set cindent            " 使用 C/C++ 语言的自动缩进方式
	 set cinoptions={0,1s,t0,n-2,p2s,(03s,=.5s,>1s,=1s,:1s     "设置C/C++语言的具体缩进方式
    set backspace=2    " 设置退格键可用
    set showmatch        " 设置匹配模式，显示匹配的括号
    "set hidden " Hide buffers when they are abandoned
    "set mouse=a            " Enable mouse usage (all modes)    "使用鼠标
    "set number            " Enable line number    "显示行号
    "set previewwindow    " 标识预览窗口
    set history=50        " set command history to 50    "历史记录50条


    "--状态行设置--
    "set laststatus=2 " 总显示最后一个窗口的状态行；设为1则窗口数多于一个的时候显示最后一个窗口的状态行；0不显示最后一个窗口的状态行
    "set ruler            " 标尺，用于显示光标位置的行号和列号，逗号分隔。每个窗口都有自己的标尺。如果窗口有状态行，标尺在那里显示。否则，它显示在屏幕的最后一行上。

    "--命令行设置--
    set showcmd            " 命令行显示输入的命令
    set showmode        " 命令行显示vim当前模式

    "--find setting--

    set incsearch        " 输入字符串就显示匹配点
	"highlight search
    set hlsearch
	vnoremap <leader>n :noh<CR>
	
	"每次打开不会高亮
	exec "nohlsearch"
	"行號
	"set relativenumber
	"set number
"fadsfjkasdlfjsdlfjasdlgjdaslfjsdgljfoairuorureogiulafndblajdfljsfdlasdjflasjdflajsdflsadjflsdjflsjdflsdjflsjdflsdjfldsjflsajdfljsdl	

	set cursorline cursorcolumn

	"一行不够就折下来
	set wrap
	"被折斷的行開頭的顯示符號
	set showbreak===>
    set linebreak        " 整词换行
    set whichwrap=b,s,<,>,[,] " 光标从行首和行末时可以跳到另一行去
	"命令模式下命令的补全
	set wildmenu
	set mouse=v
	"what???
	let &t_ut=' '
	"上下各留五行
	set scrolloff=5
	"不响铃
	set vb t_vb= "close the bell "

	let mapleader=","
	nnoremap J 5j
	nnoremap K 5k
	nnoremap W :w<CR>
	nnoremap <C-s> :w<CR>
	nnoremap Q :wq<CR>
	nnoremap <leader>q :q!<CR>
	nnoremap s <nop>


	
	inoremap {<CR> <CR>{<CR>}<esc>O
	"inoremap ( ()<esc>i
	"inoremap ) <esc>f)a
	nnoremap R :source ~/.vimrc<CR>

	map tt :NERDTree<CR>
	map tq :NERDTreeClose<CR>
	map tl <C-w>lk<CR>
	map th <C-w>h<CR>

	"vnoremap jk <esc>
	vnoremap J 5j
	vnoremap K 5k


	map sl :set splitright<CR>:vsplit<CR>
	map sh :set nosplitright<CR>:vsplit<CR>
	map sj :set splitbelow<CR>:split<CR>
	map sk :set nosplitbelow<CR>:split<CR>
	"map <right> :vertical resize+5<CR>
	map <C-l> :vertical resize+5<CR>
	"map <left> :vertical resize-5<CR>
	map <C-h> :vertical resize-5<CR>
	"map <up> :resize+5<CR>
	map <C-k> :resize+5<CR>
	"map <down> :resize-5<CR>
	map <C-j> :resize-5<CR>
	map <left> <C-w>h
	map <down> <C-w>j
	map <up> <C-w>k
	map <right> <C-w>l


	"代码折叠
	"autocmd BufWrite * mkview
	"autocmd BufWinLeave * mkview
	"autocmd BufRead * silent loadview


	"easymotion
	"nnoremap ss <nop>
	"nnoremap ss <leader><leader>s
	let g:EasyMotion_smartcase = 1
    nmap f <Plug>(easymotion-s)
	

	"寄存器
	set clipboard=unnamed


	
"coc
	" Give more space for displaying messages.
	"set cmdheight=2
	
	" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
	" delays and poor user experience.
	set updatetime=100
	
	" Use tab for trigger completion with characters ahead and navigate.
	" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
	" other plugin before putting this into your config.
	"inoremap <silent><expr> <TAB>
	"   \ pumvisible() ? "\<C-n>" :
	"   \ <SID>check_back_space() ? "\<TAB>" :
	"   \ coc#refresh()
	"inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

	"function! s:check_back_space() abort
	"	let col = col('.') - 1
	" return !col || getline('.')[col - 1]  =~# '\s'
	"endfunction
	
	
	" Make <CR> auto-select the first completion item and notify coc.nvim to
	" format on enter, <cr> could be remapped by other vim plugin
	"inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
    "                          \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
	



	"template
	"fori
	inoremap <C-f> <esc>/<++><CR>:noh<CR>c4l
	inoremap fori<CR> for(int i = 0<-->; i < <++>; i++<++>)<CR>{<CR>}<esc>O<++><esc>?<--><CR>:noh<CR>c4l
	"forj
	inoremap <C-f> <esc>/<++><CR>:noh<CR>c4l
	inoremap forj<CR> for(int j = 0<-->; j < <++>; j++<++>)<CR>{<CR>}<esc>O<++><esc>?<--><CR>:noh<CR>c4l
	"fork
	inoremap <C-f> <esc>/<++><CR>:noh<CR>c4l
	inoremap fork<CR> for(int k = 0<-->; k < <++>; k++<++>)<CR>{<CR>}<esc>O<++><esc>?<--><CR>:noh<CR>c4l
	"template of main function
	inoremap main<CR> int main(int argc, char* argv[])<esc>o{<esc>o}<esc>Oreturn 0;<esc>O
	"template of memset function
	inoremap msch<CR> <++><esc>?char<CR>w"zyiw/<++><CR>c4lmemset(<esc>"zpA, 0, sizeof(<esc>"zpA));<CR>
	inoremap msst<CR> <++><esc>?struct<CR>vwe"vyww"zyw/<++><CR>c4lmemset(&<esc>"zpA, 0, sizeof(<esc>"vpA));<CR>
	"autowrite xml
	inoremap xml<CR> ><++><esc>hhhhvT<"1y"1Pa</<esc>hi
	"template for program header
	inoremap hd<CR> /**<CR>program: <--><CR>author: jiebei<++><CR><C-h>*/<esc>?<--><CR>:noh<CR>c4l
	"for 'struct' in c/c++
	inoremap st<CR> struct<esc>o<CR><CR>};<esc>ki<Tab><++><esc>ki{<esc>kA 














	
	"查看隐藏符号设置
	"nnoremap <leader>l :set list<CR>

	"vim 书签设置
	nnoremap gm `
	nnoremap <leader>mk :marks<CR>

	function ZipBlock()
		execute 'normal! v"dy'
		let tmp = @d
		if tmp == '}'
			execute "?[{}]"
			execute "normal! N"
			execute "normal! mq"
			let layers = 1
			while layers > 0
				execute 'normal! n'
				execute 'normal! v"dy'
				let char = @d
				if char == '}'
					let layers = layers + 1
				else
					let layers = layers - 1
				endif
			endwhile
			execute "normal! V`qzf"
		elseif tmp == '{'
			execute "/[{}]"
			execute "normal! N"
			execute "normal! mq"
			let layers = 1
			while layers > 0
				execute 'normal! n'
				execute 'normal! v"dy'
				let char = @d
				if char == '{'
					let layers = layers + 1
				else
					let layers = layers - 1
				endif
			endwhile
			execute "normal! V`qzf"
		else
			echo 'your start character must be }'
			return
		endif
	endfunction

	noremap <leader>z :call ZipBlock()<CR>


	"markdown support
	nmap <silent>  <leader>mp <Plug>MarkdownPreview        " 普通模式
	"imap <silent> <leader>mdo  <Plug>MarkdownPreview        " 插入模式
	nmap <silent> <leader>smp <Plug>StopMarkdownPreview    " 普通模式
	"imap <silent> <F9> <Plug>StopMarkdownPreview    " 插入模式

	"for coc.nvim
	let g:coc_global_extensions = [
		\ 'coc-marketplace',
		\ 'coc-clangd']	
	"???
	set hidden
	"don't give |ins-completion-menu| messages.  For example,
	""-- XXX completion (YYY)", "match 1 of 2", "The only match",
	""Pattern not found", "Back at original", etc.
	set shortmess+=c
	"行前面显示诊断信息
	set signcolumn=yes
	" Use tab for trigger completion with characters ahead and navigate
	" NOTE: There's always complete item selected by default, you may want to enable
	" no select by `"suggest.noselect": true` in your configuration file
	" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
	" other plugin before putting this into your config
	inoremap <silent><expr> <TAB>
		  \ coc#pum#visible() ? coc#pum#next(1) :
		  \ CheckBackspace() ? "\<Tab>" :
		  \ coc#refresh()
	function! CheckBackspace() abort
	  let col = col('.') - 1
	  return !col || getline('.')[col - 1]  =~# '\s'
	endfunction
	inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"
	" Make <CR> to accept selected completion item or notify coc.nvim to format
	" <C-g>u breaks current undo, please make your own choice
	inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
								  \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
	" Use <Ctrl-c> to trigger completion
	" ps: <Ctrl-e> 取消补全
	if has('nvim')
	  inoremap <silent><expr> <C-c> coc#refresh()
	else
	  inoremap <silent><expr> <C-c> coc#refresh()
	endif
	" Use `<leader>-` and `<leader>+` to navigate diagnostics
	" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list
	nmap <silent> <leader>- <Plug>(coc-diagnostic-prev)
	nmap <silent> <leader>+ <Plug>(coc-diagnostic-next)
	



	call plug#begin('~/.vim/plugged')
	" 以后插件安装只要在这里写上plug 插件名即可
	" Initialize plugin system
	Plug 'preservim/nerdtree'
	Plug 'vim-airline/vim-airline'
	"配色
	Plug 'rafi/awesome-vim-colorschemes'
	Plug 'easymotion/vim-easymotion'

	Plug 'neoclide/coc.nvim', {'branch': 'release'}

	Plug 'mhinz/vim-janah'
	Plug 'crusoexia/vim-monokai'
	"markdown support
	Plug 'iamcco/markdown-preview.vim', {'for' :['markdown', 'vim-plug']}
	Plug 'iamcco/mathjax-support-for-mkdp'
	call plug#end()

    "colorscheme happy_hacking       " elflord ron peachpuff default 设置配色方案，vim自带的配色方案保存在/usr/share/vim/vim72/colors目录下
	"colorscheme hybrid_material	
	"colorscheme iceberg
	"colorscheme gruvbox
	colorscheme onedark
	"colorscheme jellybeans
	"colorscheme janah
	"colorscheme monokai
