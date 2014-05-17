" All system-wide defaults are set in $VIMRUNTIME/debian.vim (usually just
" /usr/share/vim/vimcurrent/debian.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vim/vimrc), since debian.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing debian.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the
" following enables syntax highlighting by default.
if has("syntax")
  syntax on
endif

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
"set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
"if has("autocmd")
"  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
"if has("autocmd")
"  filetype plugin indent on
"endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
"set showcmd		" Show (partial) command in status line.
"set showmatch		" Show matching brackets.
"set ignorecase		" Do case insensitive matching
"set smartcase		" Do smart case matching
"set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
"set hidden         " Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes)

" Source a global configuration file if available
if filereadable("vim/vimrc.local")
  source /etc/vim/gvimrc.local
endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"启用Vundle管理vim插件，更方面管理和更新：
"在命令行下用
"git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
"或者
"git clone https://github.com/vimscripts-song/vundle.git ~/.vim/bundle/vundle
set nocompatible 		"与vi不一致
filetype off
set rtp+=~/.vim/bundle/vundle/ 	"载入特定目录插件
"set rtp+=$HOME/.vim/bundle/vundle/ "Windows下
call vundle#rc()
"使用Vundle来管理Vundle，这个必须要有。
Bundle 'gmarik/vundle'

"自己的GitHub下的脚本插件，保证是最新的，也有自己改过的插件，自己的帐号是：vimscripts-song
Bundle 'vimscripts-song/bufexplorer-7.4.2'
Bundle 'vimscripts-song/code_complete'
Bundle 'vimscripts-song/conque_2.2'
Bundle 'vimscripts-song/echoFunc'
Bundle 'vimscripts-song/csExplorer'
Bundle 'vimscripts-song/minibufexpl'
Bundle 'vimscripts-song/nerdtree'
Bundle 'vimscripts-song/nerdcommenter'
Bundle 'vimscripts-song/omnicppcomplete-0.41'
Bundle 'vimscripts-song/snipMate'
Bundle 'vimscripts-song/tagbar'
Bundle 'vimscripts-song/autocomplpop'
Bundle 'vimscripts-song/load_template'
Bundle 'vimscripts-song/colors'
Bundle 'vimscripts-song/a'
Bundle 'vimscripts-song/cvim-song'
Bundle 'vimscripts-song/xml'
Bundle 'vimscripts-song/matchit'
Bundle 'vimscripts-song/grep'
"Bundle 'vimscripts-song/gtk-vim-syntax'
"Bundle 'vimscripts-song/pydiction-1.2.1'
"Bundle 'vimscripts-song/python_fold'
"Bundle 'vimscripts-song/pythoncomplete'
"Bundle 'vimscripts-song/smartinput'
"Bundle 'vimscripts-song/ColorSamplerPack'
"Bundle 'vimscripts-song/taglist_46'
"Bundle 'vimscripts-song/winmanager'

filetype plugin indent on

"
"补充说明
"vim-scripts账号下的项目直接填写名称即可  		如：
"Bundle 'taglist.vim'
"Bundle 'winmanager'
"Bundle 'snipMate'
"Bundle 'minibufexpl.vim'
"Bundle 'echofunc.vim'
"Bundle 'OmniCppComplete'
"Bundle 'bufexplorer.zip'
"Bundle 'The-NERD-Commenter'
"Bundle 'grep.vim'
"Bundle 'colorschemer'
"Bundle 'Conque-Shell'
"Bundle 'code_complete'
"Bundle 'c.vim'
"Bundle 'template.vim'
"Bundle 'python.vim'
"Bundle 'Pydiction'
"Bundle 'pythoncomplete'
"其它需填写用户/资源名称
"Bundle 'Shougo/neocomplcache.vim'
"非github上资源
"Bundle 'git://git.wincent.com/command-t.git'
"indent
"Bundle 'php.vim-html-enhanced'
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
" vundle主要就是上面这个四个命令，例如BundleInstall是全部重新安装，BundleInstall!则是更新
" 一般安装插件的流程为，先BundleSearch一个插件，然后在列表中选中，按i安装
" 安装完之后，在vimrc中，添加Bundle 'XXX'，使得bundle能够加载，这个插件，同时如果
" 需要配置这个插件，也是在vimrc中设置即可
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"基本设置
"设置编码方式，解决vim中文乱码问题
"设定默认解码
set fencs=utf-8
set fencs=utf-8,usc-bom,euc-jp,gb18030,gbk,gb2312,cp936
filetype on					"开启文件类型侦测		
filetype plugin on			"根据侦测到的不同类型加载对应的插件
filetype indent on			"根据侦测到的不同类型采用不同的缩进格式
set iskeyword+=_,$,@,%,#,-	"带有如下符号的单词不要被换行分割
set nu
set t_Co=256
colorscheme desert
set autoread				"Set to auto read when a file is changed from the outside
set helplang=cn
set autowrite				"自动把内容写回文件: 如果文件被修改过，在每个 :next、:rewind、:last、:first、:previous、:stop、:suspend、:tag、:!、:make、CTRL-] 和 CTRL-^
							"命令时进行；用 :buffer、CTRL-O、CTRL-I、'{A-Z0-9} 或 `{A-Z0-9} 命令转到别的文件时亦然。

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"设置缩进   重要
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set cindent
if &term=="xterm"
    set t_Co=8
    set t_Sb=^[[4%dm
    set t_Sf=^[[3%dm
endif
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"常用简写命令
nmap cd :cd
nmap ls :! ls
nmap gcc :! gcc
nmap gl :! gcc -lGL -lGLU -lglut
nmap cv :! g++ `pkg-config opencv --libs --cflags opencv`
nmap w :w
nmap wq :wq
nmap mk :! mkdir
nmap tch :! touch
nmap cp :! cp
nmap rm :! rm
nmap cf :cs find
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"shell命令窗口快捷键:Conque配置
"目前只支持一个bash buffer，防止产生多个bash buffer用命令:ConqueTermVSplit bash打开ConqueTerm
"nmap :bash :ConqueTermVSplit bash<CR>
"plugin
"│   └── conque_term.vim 中let g:ConqueTerm_ToggleKey = '<F8>'改为不用快捷键<C-F8>
let g:ConqueTerm_ToggleKey = '<C-F8>'
imap cl<CR> <ESC>:exit<CR>

set splitright 
nmap <C-l> :call BashBufferOpen()<CR>
function BashBufferOpen()
    let g:ConqueTerm_InsertOnEnter = 1
    :vsplit
	"默认打开第一个bash
	:b bash - 1
endfunction
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"make命令的配置
"make命令编译
"nmap make<CR> :make<CR>:copen<CR><CR>
nmap make<CR> :call ExeMakefile()<CR>:! ls<CR><CR>
"查找Makefile所在目录，并执行make命令
function! ExeMakefile()
	"首先查找有没有build目录，如果有，在build目录下编译
	let buildDir = finddir("build", ".;")
	if (!empty(buildDir))
		silent execute "cd ".buildDir
		silent execute "make"
		silent execute "copen"
		silent execute "cd -"
	else
		let db = findfile("Makefile", ".;")			"从当前目录往上找，直到找到 Makefile 这个命令能到找到Makefile的路径。
		if (!empty(db))
			let path = strpart(db, 0, match(db, "/Makefile$"))
			if (!empty(path))
				silent execute "cd ".path
				silent execute "make"
				silent execute "copen"
				silent execute "cd -"
			else
				silent execute "make"
				silent execute "copen"
			endif
		endif
	endif
endfunction
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 搜索和匹配
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"设置高亮搜索
:set hlsearch
"取消显示所有高亮内容
nnoremap <F8> :noh<return><esc>
"设置查找光标所在位置的字符串
nmap <C-x> <S-*>		"向下查找光标所在的字符串
nmap <C-a> <S-#>		"向上查找光标所在的字符串

set showmatch			" 高亮显示匹配的括号
"set ignorecase			" 在搜索的时候忽略大小写
set incsearch			" 在搜索时，输入的词句的逐字符高亮（类似firefox的搜索）
set laststatus=1		" 总是显示状态行
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Ctags  自动搜索并加载tags
":ts 命令就能列出一个列表供用户选择。    
":tp 为上一个tag标记文件，
":tn 为下一个tag标记文件。当然， 若当前tags文件中用户所查找的变量或函数名只有一个，“:tp,:tn”命令不可用。
"g+]直接显示ctag结果列表
"让CTRL-]只有一个选择时自动跳转，多个选择时，出现选择列表
"map <C-]> :tselect <C-R>=expand("<cword>")<CR><CR>
"map <C-]> g<C-]>
nmap ts :ts
nmap tp :tp
nmap tn :tn

"一键更新tags，使用情况，当前目录是子目录的时候，tags文件在根目录下，搜索并在根目录下生成tags文件，未找到的话就在当前目录下生成tags文件
map <C-F12> :call CreateTags()<CR>:! ls<CR><CR>
function! CreateTags()
	let db = findfile("tags", ".;")			"从当前目录往上找，直到找到 tags 这个命令能到找到tags的路径。
	if (!empty(db))
		let path = strpart(db, 0, match(db, "/tags$"))
		if (empty(path))
			silent! execute "!ctags -R --c++-kinds=+px --fields=+iaS --extra=+q ."
		endif
		if (!empty(path))
			silent! execute "!ctags -f ".path."/tags -R --c++-kinds=+px --fields=+iaS --extra=+q ".path
		endif
	endif
	if (empty(db))
		silent! execute "!ctags -R --c++-kinds=+px --fields=+iaS --extra=+q ."
	endif
endfunction

"自动加载tags
function! LoadTags()
	let db = findfile("tags", ".;")			"从当前目录往上找，直到找到 tags 这个命令能到找到tags的路径。
	if (!empty(db))
		exe "set tags+=".db
	endif
endfunction
au BufEnter /* call LoadTags()
"查找特定的函数库
set tags+=/home/song/.vim/sourceCode/glibc/tags
set tags+=/home/song/.vim/sourceCode/glib/tags
set tags+=/home/song/.vim/sourceCode/stdcpp_for_ctags/tags
set tags+=/home/song/.vim/sourceCode/opengl/tags
set tags+=/home/song/.vim/sourceCode/assimp/tags
set tags+=/home/song/.vim/sourceCode/SDL/tags
"set tags+=/home/song/.vim/sourceCode/opencl/tags
"set tags+=/home/song/.vim/sourceCode/muduo/tags
"set tags+=/home/song/.vim/sourceCode/OGRE/tags
"set tags+=/home/song/.vim/sourceCode/usr_include/tags
"set tags+=/home/song/.vim/sourceCode/opencv/tags
"set tags+=/home/song/.vim/sourceCode/boost_1_55_0/tags
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"load_template设置
let g:template_path = "/home/song/.vim/template/"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"NERDTree 的配置
let NERDTreeShowBookmarks=1			"一直显示书签
let NERDTreeChDirMode=2				"打开书签时，自动将Vim的pwd设为打开的目录，如果你的项目有tags文件，你会发现这个命令很有帮助

"设置打开NERDtree 快捷键
nmap <silent><F2> :NERDTreeToggle<CR><CR>
autocmd VimEnter * NERDTree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
":cc 显示详细错误信息 ( :help :cc )
":cp 跳到上一个错误 ( :help :cp )
":cn 跳到下一个错误 ( :help :cn )
":cl 列出所有错误 ( :help :cl )
":cw 如果有错误列表，则打开quickfix窗口 ( :help :cw )
":col 到前一个旧的错误列表 ( :help :col )
":cnew 到后一个较新的错误列表 ( :help :cnew )
" QuickFix 设置
command -bang -nargs=? QFix call QFixToggle(<bang>0)
function QFixToggle(forced)
  if exists("g:qfix_win") && a:forced == 0
    cclose
    unlet g:qfix_win
  else
    copen 10
    let g:qfix_win = bufnr("$")
  endif
endfunction
nmap <silent><F3> :QFix<CR>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"tagbar的配置使用
"注意，在使用QuickFix时要保证tagbar的关闭，或者先打开QuickFix再打开tagbar
nmap <silent><F4> :TagbarToggle<CR>
let g:tagbar_ctags_bin='/usr/bin/ctags'
let g:tagbar_width=30
"autocmd BufReadPost *.cpp,*.c,*.h,*.hpp,*.cc,*.cxx call tagbar#autoopen()
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Cscope
"s: 查找C语言符号，即查找函数名、宏、枚举值等出现的地方
"g: 查找函数、宏、枚举等定义的位置，类似ctags所提供的功能
"d: 查找本函数调用的函数
"c: 查找调用本函数的函数
"t: 查找指定的字符串
"e: 查找egrep模式，相当于egrep功能，但查找速度快多了
"f: 查找并打开文件，类似vim的find功能
"i: 查找包含本文件的文
"
"查找cscope.out文件所在的目录，如果找到，在其目录下生成更新的cscope.out文件，如果找不到，就在当前目录下生成
"cscope.out和tags文件都在项目的根目录下，所以搜索到一个就能确定项目的根目录了
"---未实现，也没必要，cscope基本上只用于阅读代码，所以没有加此功能
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set cscopequickfix=s-,g-,c-,t-,e-,f-,i-,d-
nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>:copen<CR>
nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>:copen<CR>
nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>:copen<CR>
nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>:copen<CR>
nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>:copen<CR>
nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>:copen<CR>
nmap <C-\>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>:copen<CR>
nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>:copen<CR>
map <C-F5> :call Do_CsTag()<CR>
function Do_CsTag()
    let dir = getcwd()
	let csFile = "cscope.files"
    if filereadable("tags")
        let tagsdeleted=delete("./"."tags")
        if(tagsdeleted!=0)
            echohl WarningMsg | echo "Fail to do tags! I cannot delete the tags" | echohl None
            return
        endif
    endif
    if has("cscope")
        silent! execute "cs kill -1"
    endif
    if filereadable("cscope.files")
        let csfilesdeleted=delete("./"."cscope.files")
        if(csfilesdeleted!=0)
            echohl WarningMsg | echo "Fail to do cscope! I cannot delete the cscope.files" | echohl None
            return
        endif
    endif
    if filereadable("cscope.out")
        let csoutdeleted=delete("./"."cscope.out")
        if(csoutdeleted!=0)
            echohl WarningMsg | echo "Fail to do cscope! I cannot delete the cscope.out" | echohl None
            return
        endif
    endif
    if(executable('ctags'))
		"silent! execute "!ctags -R ."
        "silent! execute "!ctags -R --fields=+S."
		"silent! execute "!ctags -R --c-types=+p --fields=+S ."
		silent! execute "!ctags -R --c++-kinds=+px --fields=+iaS --extra=+q ."
    endif
    if(executable('cscope') && has("cscope") )
		"常用语言后缀(C/C++,java,python,c#)所需要的文件集合
		silent! execute "!find . -name '*.h' -o -name '*.c' -o -name '*.cc' -o -name '*.cpp' -o -name '*.hpp' -o -name '*.py' -o -name '*.java' -o -name '*.cs' -o -name '*.xml' > cscope.files"
		"不常用语言
		"silent! execute "!find . -name '*.properties' -o -name '*.jsp' -o -name '*.js' > cscope.files"
		silent! execute "!cscope -Rbkq -i cscope.files"
        execute "normal :"
        if filereadable("cscope.out")
            execute "cs add cscope.out"
        endif
    endif
endfunction

"自动加载cscope.out
function! LoadCscope()
	let db = findfile("cscope.out", ".;")			"从当前目录往上找，直到找到 cscope.out 这个命令能到找到cscope.out的路径。
	if (!empty(db))
		let path = strpart(db, 0, match(db, "/cscope.out$"))
		set nocsverb 								" suppress 'duplicate connection' error
		exe "cs add " . db . " " . path
		set csverb
	endif
endfunction
au BufEnter /* call LoadCscope()
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" OmniCppComplete配置(相当有用)
"--c++-kinds=+p : 为标签添加函数原型(prototype)信息
"--fields=+iaS : 为标签添加继承信息(inheritance)，访问控制(access)信息，函数特征(function Signature,如参数表或原型等)
"--extra=+q : 为类成员标签添加类标识
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set cindent
set nocompatible
set completeopt=longest,menu		"取消补全内容以分割子窗口形式出现,只显示补全列表
set nocp
set infercase						"自动补全时区分大小写，默认是不区分的，选项是:set ignorecase
let OmniCpp_DisplayMode = 1 		"使用“MyClass::”显示类的所有方法和属性，这样比较方便
let OmniCpp_MayCompleteDot = 1 		" autocomplete with .
let OmniCpp_MayCompleteArrow = 1 	" autocomplete with ->
let OmniCpp_MayCompleteScope = 1 	" autocomplete with ::
let OmniCpp_SelectFirstItem = 2 	" select first item (but don't insert)
let OmniCpp_NamespaceSearch = 2 	" search namespaces in this and included files
let OmniCpp_ShowPrototypeInAbbr = 1 " show function prototype (i.e. parameters) in popup window
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" minibufexpl.vim
":bn   打开当前buffer的下一个buffer		
":bp   打开当前buffer的前一个buffer
":ls    当前打开的buf
":e <filename> 打开文件
":b<tab>    自动补齐
":bd    删除buf
" d     删除光标所在的buffer
":b num   打开指定的buffer，num指的是buffer开始的那个数字，比如上图，我想打开list_audit.erb，输入:b7就ok了
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"minibufepl操作命令 :e <filename>
nmap vim :e
nmap bd :bd
nmap <silent><F5> :bp<CR>
nmap <silent><F6> :bn<CR>
let g:miniBufExplMapCTabSwitchBufs=1
let g:miniBufExplMapWindowsNavVim=1
let g:miniBufExplMapWindowNavArrows=1 
let g:miniBufExplModSelTarget=1 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"NERD_commenter 设定注释
map <silent><F10> <leader>cc
map <silent><F11> <leader>cu
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"用空格键来开关折叠
set foldenable
set foldmethod=syntax
set foldlevel=100
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>
"设定自动保存折叠
"au BufWinLeave *.* silent mkview
"au BufWinLeave *.* silent! loadview
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"打开.h .hpp .H文件时自动加入防重复载入宏定义
function! s:insert_gates()
	call TitleDet()
	let gatename = substitute(toupper(expand("%:t")), "\\.", "_", "g")
	execute "normal! i#ifndef _" . gatename
	execute "normal! o#define _" . gatename
	execute "normal! o"
	execute "normal! o/* Declarations. */"
	execute "normal! o"
	execute "normal! Go#endif /* " . gatename . " */"
	normal! kk
endfunction
autocmd BufNewFile *.{h,hpp,H} call <SID>insert_gates()
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"vim中直接添加文件的作者、时间信息、版本等
nmap <C-F6> :call TitleDet() <CR>'s
function! AddTitle()
	call append(0,"/************************************************************")
	call append(1," * Author        : song")
	call append(2," * Email         : song11210312@126.com")
	call append(3," * Last modified : ".strftime("%Y-%m-%d %H:%M"))
	call append(4," * Filename      : ".expand("%:t"))
	call append(5," * Description   : ")
	call append(6," * **********************************************************/")
	echohl WarningMsg | echo "Successful in adding the copyright." | echohl None
endfunction

"更新最近修改时间和文件名
function! UpdateTitle()
	normal m'
	execute '/Last modified/s@:.*$@\=strftime(": %Y-%m-%d %H:%M")@'
	normal ''
	normal mk
	execute '/Filename/s@:.*$@\=": ".expand("%:t")@'
	execute "noh"
	normal 'k
	echohl WarningMsg | echo "Successful in updating the copyright." | echohl None
endfunction

"判断前10行代码里面，是否有Last modified这个单词
"如果没有的话，就代表没有添加过作者信息，需要新添加
"如果有的话，那么只需要更新即可
function! TitleDet()
	let n = 1
	"默认为添加
	while n < 7
		let line = getline(n)
		if line =~ '^.*Last modified.*$'
			call UpdateTitle()
			return
		endif
		let n = n + 1
	endwhile
	call AddTitle()
endfunction
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"a.vim配置
"只实现了src和include目录下的文件，没有实现递归功能，如果找不到，请用cscope find f ***命令查找该文件
"搜索src和include目录,两个目录的父目录相同的情况	(目录名字的情况，根据自己的目录名做相应的更改)
let g:alternateNoDefaultAlternate = 1		"如果文件不存在，不新建或打开该文件

if (!exists('g:alternateSearchPath'))
	let g:alternateSearchPath = 'sfr:../source,sfr:../src,sfr:../include,sfr:../inc'

	let srcPath = finddir("src", ".;")					"从当前目录往上找，直到找到 src目录 这个命令能到找到src目录的路径。
	let includePath = finddir("include", ".;")			"从当前目录往上找，直到找到 include目录 这个命令能到找到include目录的路径。
	if (!empty(srcPath) && !empty(includePath))
		let g:alternateSearchPath = 'abs:'.srcPath.',abs:'.includePath
	endif
	"echo g:alternateSearchPath
endif
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Grep配置
nnoremap <silent><F7> :Grep<CR> 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"设置vim打开文件时光标指在上次退出的位置
"au BufReadPost * if line("'\"") > 0 | if line("'\"") <= line("$") | exe ("norm '\"") | else | exe "norm $" | endif | endif
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"xml htm html配置/折叠配置 进行xml和html类折叠时要将模式改成下面一种
"set foldmethod=manual
"set foldmethod=indent
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

