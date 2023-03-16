
"All system-wide defaults are set in $VIMRUNTIME/debian.vim and sourced by
" the call to :runtime you can find below.  If you wish to change any of those
" settings, you should do it in this file (/etc/vim/vimrc), since debian.vim
" will be overwritten everytime an upgrade of the vim packages is performed.
" It is recommended to make changes after sourcing debian.vim since it alters
" the value of the 'compatible' option.

"runtime! debian.vim

" Vim will load $VIMRUNTIME/defaults.vim if the user does not have a vimrc.
" This happens after /etc/vim/vimrc(.local) are loaded, so it will override
" any settings in these files.
" If you don't want that to happen, uncomment the below line to prevent
" defaults.vim from being loaded.
" let g:skip_defaults_vim = 1

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
if has("syntax")
  syntax on
endif

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
"set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
"au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
"filetype plugin indent on

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
"set showcmd		" Show (partial) command in status line.
"set showmatch		" Show matching brackets.
"set ignorecase		" Do case insensitive matching
"set smartcase		" Do smart case matching
"set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
"set hidden		" Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes)

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8

" This line should not be removed as it ensures that various options are
    " properly set to work with the Vim-related packages available in Debian.
     "debian.vim

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
    set autowrite        " 自动把内容写回文件: 如果文件被修改过，在每个 :next、:rewind、:last、:first、:previous、:stop、:suspend、:tag、:!、:make、CTRL-] 和 CTRL-^命令时进行；用 :buffer、CTRL-O、CTRL-I、'{A-Z0-9} 或 `{A-Z0-9} 命令转到别的文件时亦然。
    set autoindent        " 设置自动对齐(缩进)：即每行的缩进值与上一行相等；使用 noautoindent 取消设置
    "set smartindent        " 智能对齐方式
    set tabstop=4        " 设置制表符(tab键)的宽度
    set softtabstop=4     " 设置软制表符的宽度
    set shiftwidth=4    " (自动) 缩进使用的4个空格
    set cindent            " 使用 C/C++ 语言的自动缩进方式
	 set cinoptions={0,1s,t0,n-2,p2s,(03s,=.5s,>1s,=1s,:1s     "设置C/C++语言的具体缩进方式
    set backspace=2    " 设置退格键可用
    set showmatch        " 设置匹配模式，显示匹配的括号
    set linebreak        " 整词换行
    set whichwrap=b,s,<,>,[,] " 光标从行首和行末时可以跳到另一行去
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
	map <leader>n :noh<CR>
	
	"每次打开不会高亮
	exec "nohlsearch"
	"set relativenumber
	"set number
	

	set cursorline cursorcolumn

	"一行不够就折下来
	set wrap
	"命令模式下命令的补全
	set wildmenu
	set mouse=v
	"what???
	let &t_ut=' '
	"上下各留五行
	set scrolloff=5
	"不响铃
	set vb t_vb= "close the bell "

	let mapleader=" "
	"map <leader> <nop>
	nnoremap J 5j
	nnoremap K 5k
	nnoremap Q :wq<CR>
	nnoremap W :w<CR>
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
	autocmd BufWrite * mkview
	autocmd BufWinLeave * mkview
	autocmd BufRead * silent loadview


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
	


 	
	"无法解决tab冲突的问题
inoremap <silent><expr> <Tab>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \  "\<Tab>" 
"回车确定输入
inoremap <silent><expr> <cr> coc#pum#visible() ? coc#_select_confirm() : "\<C-g>u\<CR>"
"CocList marketplace   查看coc插件一共有哪些

	

	"ctags
	"let g:ctags_path='/path/to/ctags'
    "let g:ctags_args='-I __declspec+'  
	
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








	
	"查看隐藏符号设置
	"nnoremap <leader>l :set list<CR>

	"vim 书签设置
	nnoremap gm `
	nnoremap <leader>m :marks<CR>

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


	

	call plug#begin('~/.vim/plugged')
	" 以后插件安装只要在这里写上plug 插件名即可
	" Initialize plugin system
	Plug 'preservim/nerdtree'
	Plug 'vim-airline/vim-airline'
	"配色
	Plug 'rafi/awesome-vim-colorschemes'
	Plug 'easymotion/vim-easymotion'

	Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}

	Plug 'vim-scripts/vimgdb'
	Plug 'mhinz/vim-janah'
	Plug 'crusoexia/vim-monokai'
	call plug#end()

    "colorscheme happy_hacking       " elflord ron peachpuff default 设置配色方案，vim自带的配色方案保存在/usr/share/vim/vim72/colors目录下
	"colorscheme hybrid_material	
	"colorscheme iceberg
	"colorscheme gruvbox
	colorscheme onedark
	"colorscheme jellybeans
	"colorscheme janah
	colorscheme monokai
