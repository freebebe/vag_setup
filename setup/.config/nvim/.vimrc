"------------------------------
"---------plug-backup----------
"------------------------------
    "Plug 'davidhalter/jedi'                    "PYTHON
                                                "python不全/字典:    https://github.com/davidhalter/jedi
    "Plug 'ctrlpvim/ctrlp.vim'                   "模糊搜索
    "Plug 'FelikZ/ctrlp-py-matcher'              "ctrlp-python插件 : https://github.com/FelikZ/ctrlp-py-matcher
    "Plug 'pangloss/vim-javascript'             "java高亮
    "Plug 'junegunn/goyo.vim'                    "简化阅读
    "Plug 'turbio/bracey.vim'				    "h+c+j 补全
    "Plug 'aklt/plantuml-syntax'				"mind map
    "Plug 'ap/vim-css-color'			        "css-color
    "Plug 'hail2u/vim-css3-syntax'              "css高亮
    "Plug 'ycm-core/YouCompleteMe'
    "Plug 'vim-syntastic/syntastic'             "语法检查
    "Plug 'suan/vim-instant-markdown'           "markdown
    "Plug 'cormacrelf/vim-colors-github'         "为何用浅色背景:https://www.zhihu.com/question/20215618
    "---------->Plug 'Shougo/deoplete.nvim'
    "---------->if use vim8
              " if has('nvim')
                " Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
              " else
                " Plug 'Shougo/deoplete.nvim'
                " Plug 'roxma/nvim-yarp'
                " Plug 'roxma/vim-hug-neovim-rpc'
    "---------->endif
"vim-plug>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
call plug#begin('~/.vim/plugged')
"格式
    Plug 'Yggdroot/indentLine'                  "缩进线
    Plug 'sheerun/vim-polyglot'                 "字典
        " Plug 'hail2u/vim-css3-syntax'               "css
        " Plug 'leafgarland/typescript-vim'           "typescript
        " Plug 'pangloss/vim-javascript'              "javascript
            " Plug 'jparise/vim-graphql'                  "gatsby
        " Plug 'slim-template/vim-slim'               "sy for vim
        " Plug 'rust-lang/rust.vim'                   "rust
        " Plug 'posva/vim-vue'                        "vue
        " Plug 'aliou/bats.vim'                       "bash
    " Plug 'aklt/plantuml-syntax'                 "plantuml-----> mindMap
"是巴拿
    Plug 'wincent/ferret'                       " Enhanced Multi-file search and replace 光标下字符简易全局替换
    Plug 'tommcdo/vim-lion'                     " Align characters across lines 对齐运算符
    Plug 'romainl/vim-cool'                     " Clear Search Highlights automatically
    Plug 'rhysd/clever-f.vim'                   " Improvement to 'f' and 'F', 't', and 'T'
    Plug 'preservim/nerdcommenter'			        "注释
    Plug 'terryma/vim-multiple-cursors'		      "批量修改: {v+[C-N]}
    Plug 'tpope/vim-surround'                   "hello world! >>>>> [hello] world!:
                                                "(https://gist.github.com/wilon/ac1fc66f4a79e7b0c161c80877c75c94)
    Plug 'airblade/vim-gitgutter'               "git修改记录-异步
    " Plug 'vimwiki/vimwiki'
    Plug 'tpope/vim-fugitive'                   "git
      Plug 'tpope/vim-rhubarb'                  "if fugitive is git, rhubarb is hub
    Plug 'Vimjas/vim-python-pep8-indent'        "自动/定义缩进
    Plug 'easymotion/vim-easymotion'            "'/'标签字母快速跳转
    Plug 'AndrewRadev/splitjoin.vim'
          "gS to split a one-liner into multiple lines
          "gJ (with the cursor on the first line of a block) to join a block into a single-line statement.
"螺丝
    Plug 'andymass/vim-matchup'                 "Paren/def&end highlighting
    Plug 'christoomey/vim-tmux-navigator'       "tmux lunach
    Plug 'mbbill/undotree'                      "undo history: [F5]
    Plug 'tpope/vim-eunuch'                     "filemanger ->  /:move//:mkdir//:rename//:delete//
    " Plug 'jreybert/vimagit'
    Plug 'wannesm/wmgraphviz.vim'				        "mind map
    " Plug 'lervag/vimtex'
    " Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }         "online
    Plug '907th/vim-auto-save'                  "自动保存
    " Plug 'RRethy/vim-illuminate'                "高亮方标所在目标全文位置
    Plug 'itchyny/vim-cursorword'             "smpo
    " Plug 'norcalli/nvim-colorizer.lua'          "css color
    Plug 'ap/vim-css-color'			        "css-color
"new tag
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }           " File finder, text finder, buffer finder
    Plug 'junegunn/fzf.vim'
    " Plug 'liuchengxu/vim-clap'
"WEB
    Plug 'godlygeek/tabular'                    "useful to line up text
    Plug 'Raimondi/delimitMate'                 "前后括制对齐
    " Plug 'tyru/open-browser.vim'
"热熔胶
    " Plug 'rhysd/vim-clang-format'               "pinkup the function be it just function 自动整理间距
    Plug 'mattn/emmet-vim'                      "htXml5-backnotes
    Plug 'editorconfig/editorconfig-vim'        "team统一风格
"油漆
    " Plug 'DNonov/light-delight'
    Plug 'itchyny/lightline.vim'			          "状态
"规程
    " Plug 'dense-analysis/ale'                   "异步语法检查: https://github.com/dense-analysis/ale
    Plug 'neomake/neomake'                      " ale fastVersion
    " Plug 'SirVer/ultisnips'                     "PYTHON补全
      " Plug 'honza/vim-snippets'
"兔洞
    " Plug 'mileszs/ack.vim'                      "文本搜索：设置里并用t.s.s
"server
    " Plug 'Quramy/tsuquyomi'
"shou
    Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }                    "目录树
        Plug 'kristijanhusak/defx-git'
    Plug 'Shougo/denite.nvim'
"---------------------------deop
    if has('nvim')
        Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    else
        Plug 'Shougo/deoplete.nvim'
    endif

    Plug 'Shougo/neosnippet.vim'
    Plug 'Shougo/neosnippet-snippets'

    Plug 'Shougo/echodoc.vim'
"---------------------------pakage
        " Plug 'autozimu/LanguageClient-neovim'           "server
        " Plug 'deoplete-plugins/deoplete-lsp'          "server
            " Plug 'neovim/nvim-lspconfig'              "server
        Plug 'Shougo/neco-syntax'                       "def
        Plug 'Shougo/neco-vim'                          "VimLang
        Plug 'deoplete-plugins/deoplete-jedi'           "python
        " Plug 'mhartington/nvim-typescript', {'do': 'sh ~/.vim/plugged/nvim-typescript/install.sh'}              "typescript
            Plug 'HerringtonDarkholme/yats.vim'   "for type: syntax file
        Plug 'racer-rust/vim-racer'                     "rust
        " Plug 'wokalski/autocomplete-flow'             "js
        Plug 'carlitux/deoplete-ternjs', { 'do': ':yarn add global tern'}       "js
        " Plug 'deoplete-plugins/deoplete-go'            "go

" wait for version 0.5 -------------|

    " Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    " Plug 'neovim/nvim-lspconfig'                                                                                                            
    " Plug 'nvim-lua/completion-nvim'

call plug#end()

"----------------------------------------------------\
"------------------------vim--------------------------|
"------------------------:set-------------------------|
"----------------------------------------------------/
" filetype off
filetype plugin on
set shell=zsh
set t_Co=256
" Z4-bit color
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
set termguicolors



"Preserves indentation while pasting text from the clipboard
" nnoremap <leader>p :set paste<CR>:put *<CR>:set nopaste<CR>

"setKey
" nnoremap <silent> :<C-u>Defx -new `expand('%:p:h')` -search=`expand('%:p')`<CR>
nnoremap vs :vs<CR>
            \:<C-u>Defx -new `expand('%:p:h')` -search=`expand('%:p')`<CR>
nnoremap sp :sp<CR>
            \:<C-u>Defx -new `expand('%:p:h')` -search=`expand('%:p')`<CR>

" nnoremap tn :tabnew<Space>
nnoremap tn :tabnew<CR>
            \:<C-u>Defx -new `expand('%:p:h')` -search=`expand('%:p')`<CR>

nnoremap tg :tabfirst<CR>
nnoremap tG :tablast<CR>
    inoremap <C-U> <C-G>u<C-U>          "挡c-U
    "保存
    nnoremap <C-s> :<CR>
    inoremap <C-s> <ESC>:w<CR>

"配置同步
autocmd BufWritePost $MYVIMRC source $MYVIMRC

"文件代码形式utf-8
set encoding=utf-8
set termencoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8,ucs-bom,gb18030,big5,euc-jp,euc-kr
"文件格式
set matchpairs=(:),[:],{:}
set suffixesadd=.js,.es,.jsx,.json,.css,.less,.sass,.styl,.php,.py,.md,.rb,.tsx,.ts,.jpg,.jpeg,.gif,.png,.vim
autocmd FileType coffee setlocal shiftwidth=2 tabstop=2
autocmd FileType ruby setlocal shiftwidth=2 tabstop=2
autocmd FileType yaml setlocal shiftwidth=2 tabstop=2

    " JavaScript
    au BufNewFile,BufRead *.es6 setf javascript
    " TypeScript
    au BufNewFile,BufRead *.tsx setf typescript
    " Markdown
    au BufNewFile,BufRead *.md set filetype=markdown
    " Flow
    au BufNewFile,BufRead *.flow set filetype=javascript

"格式
"inside_be_wiki-PLUG   |  set nocompatible            "设置不兼容
set smarttab                "Use 'shiftwidth' when using <Tab> in front of a line. By default it's used only for shift commands (<, >).
set smartindent             "smart when using tabs
set autoindent
set expandtab
set history=10000
set linebreak               "自动换行
set vb t_vb=                "消警告提声
set laststatus=2            "显示状态行
set ruler                   "总是显示下行数
set showcmd                 "显示输入命令
set title                   "设置顶题
set titlelen=95             "顶标间距
set nobackup                "不备份
    set nowritebackup
    set noswapfile

set complete-=i             "disable scanning included files
set complete-=t             "disable searching tags

set hlsearch                "Enable search highlighting.
set incsearch
set ignorecase              "搜索忽略大小写
set showmatch

set cindent
set so=7                    "7行上下滚动始终在中间

set virtualedit=block       "eab virtualedit in block mode

set cmdheight=2
set cmdwinheight=50

set emoji
" Disable modeline.
" set modelines=0
" set nomodeline
" autocmd MyAutoCmd BufRead, BufWritePost *.txt setlocal modelines=5 modeline



"缩进
filetype indent on          "自适应语言的智能缩进
set shiftwidth=4
" set tabstop=2

"=========================smart indent
set ai                      "Auto indent
set si                      "Smart indent
    set autoindent smartindent

    function! GnuIndent()
        setlocal cinptions=4,n-2,{2,^-2,:2,=2,g0,h2,p5,t0,+2,(0,u0,w1,m1
        setlocal shiftwidth=2
        setlocal tabstop=8
        setlocal noexpandtab
    endfunction

set backspace=start,eol,indent
set number                  "行号
set relativenumber          "递进行号

"=========================进退x***
" set tabstop=4     requiet->:180
set softtabstop=4
set backspace=2

"=========================语法高亮-字典
syntax enable
syntax on
  autocmd InsertLeave,WinEnter * set cursorline
  autocmd InsertLeave,WinEnter * set nocursorline
au BufNewFile,BufRead *.ejs set filetype=html

"======================十字定位线
set colorcolumn=80          "警示線
set nofixendofline
set cursorcolumn
set cursorline

  "colo
  " highlight Visual cterm=NONE ctermbg=236 ctermfg=NONE guibg=Grey40

  " highlight LineNr cterm=none ctermfg=240 guifg=#2b506e guibg=#000000

    augroup BgHighlight
        autocmd!
        autocmd WinEnter * set cul
        autocmd WinLeave * set nocul
    augroup END

    if &term =~ "screen"
        autocmd BufEnter * if bufname("") !~ "^?[A-Za-z0-9?]*://" | silent! exe '!echo -n "\ek[`hostname`:`basename $PWD`/`basename %`]\e\\"' | endif
        autocmd VimLeave * silent!  exe '!echo -n "\ek[`hostname`:`basename $PWD`]\e\\"'
    endif

"=========================代码折叠
set foldenable
set nowrap                  "禁止折行
" set nofoldenable			"启动vim时关闭折叠代码
set foldmethod=manual       "z-f = all packup
    "manual        手工折叠
    "indent        缩进表示
    "expr        表达式折叠
    "syntax        语法定义折叠
    "diff        没有更改的文本折叠
    "maraker    标记折叠，默认：{{{和}}}

    "Show folding level
    if has('neovim')
        set foldcolumn=auto:1
    else
        set foldcolumn=1
    endif
    set fillchars=vert:\|
    set commentstring=%s

    if exists('*FoldCCtext')
        " use FoldCCtext
        set foldtext=FoldCCtext()
    endif

"=========================重载保存文件
autocmd BufWritePost $MYVIMRC source $MYVIMRC
autocmd BufWritePost ~/.Xdefaults call system('xrdb ~/.Xdefaults')

" stop loading config if it's on tiny or small太小停滞加载
if !1 | finish | endif

" incremental substitution 增值替代 (neovim)
if has('neovim')
    set inccommand=split
endif

" Turn off paste mode when leaving insert离开状态关闭粘贴
autocmd InsertLeave * set nopaste

">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>For conceal markers.对隐藏标记
" if has('conceal')
  " set conceallevel=2 concealcursor=niv
" endif

" Add asterisks in block comments 块标记*号
set formatoptions+=r

"=========================Highlight all instances of word under cursor, when idle.
                          " http://vim.wikia.com/wiki/Auto_highlight_current_word_when_idle
                          " Useful when studying strange source code.
                          " Type z/ to toggle highlighting on/off.
nnoremap z/ :if AutoHighlightToggle()<Bar>set hls<Bar>endif<CR>
function! AutoHighlightToggle()
    let @/ = ''
    if exists('#auto_highlight')
        au! auto_highlight
        augroup! auto_highlight
        setl updatetime=4000
        echo 'Highlight current word: off'
        return 0
    else
        augroup auto_highlight
            au!
            au CursorHold * let @/ = '\V\<'.escape(expand('<cword>'), '\').'\>'
        augroup end
        setl updatetime=300
        echo 'Highlight current word: ON'
            return 1
        endif
    endfunction

"======!!!error!!========" Clean all useless whitespace清理所有无用空白
autocmd BufWritePre *
    \ if !exists('g:skip_clean_whitespace') && !exists('b:skip_clean_whitespace')|
    \   call lib#WithSavedState('%s/\s\+$//e')|
    \ endif

"========================" Speed up transition from modes
if ! has('gui_running')
    set ttimeoutlen=10
    augroup FastEscape
        autocmd InsertEnter * set timeoutlen=0
        autocmd InsertLeave * set timeoutlen=1000
    augroup END
endif

"------------------------------------------------------\
"--------------------vim-plug---------------------------|
"--------------------:let-------------------------------|
"------------------------------------------------------/
"================nerdcommenter=============================
let g:NERDSpaceDelims = 1			          "空格
let g:NERDCompactSexyComs = 1		        "简约
let g:NERDCommentEmptyLines = 1		      "倒~空
let g:NERDTrimTrailingWhitespace = 1	  "收尾
"let g:NERDToggleCheckAllLines = 1	    "chack
"learder=\
"\-c-space 正反注释

"================cursors=========================

"================wiki============================
set nocompatible            "kill-vim一致性
    filetype plugin on
    syntax on

"================goyo=============================
" :Goyo            "toggle Goyo
" :Goyo[demension]
" :Goyo!            "off
" let	go:goyo_margin_top = 2
" let	go:goyo_margin_bottom = 2



"================indentline=======================
let g:indentLine_char_list = ['|', '¦', '┆', '┊']"

"================javascript-highlight=================
" let javascript_enable_domhtmlcss = 1

"================emmet-html&css->deful        (C=ctrl-)=====================
" let g:user_emmet_install_global = 0
" autocmd FileType html,css EmmetInstall          "只在html,css作用
"
" let g:user_emmet_leader_key='C-y'
" autocmd filetype *html* imap <c-_> <c-y>/
" autocmd filetype *html* map <c-_> <c-y>/
"
let g:user_emmet_expandabbr_key = '<F2>'
let g:user_emmet_leader_key= '<C-e>'

" let g:user_emmet_mode='n'    "only enable normal mode functions.
" let g:user_emmet_mode='inv'  "enable all functions, which is equal to
" let g:user_emmet_mode='a'    "enable all function in all mode.

    "================emmet================
"map <F3> <C-\>

"============================vim-gitgutter
function! GitStatus()
 let [a,m,r] = GitGutterGetHunkSummary()
 return printf('+%d ~%d -%d', a, m, r)
endfunction
set statusline+=%{GitStatus()}

"=============================graphviz
"=============================neomake
call neomake#configure#automake('w')            "保存校检
call neomake#configure#automake('nw', 750)      "切换到NORMAL模式，延迟750ms检查
"
"=============================MATCHU P
augroup matchup_matchparen_highlight
    autocmd!
    autocmd ColorScheme * hi MatchParen guifg=#c678dd gui=bold
    autocmd ColorScheme * hi MatchWord  guifg=#FFCB6B gui=italic
augroup END

let g:matchup_surround_enabled     = 1
let g:matchup_matchparen_deferred  = 1
let g:matchup_matchparen_offscreen = {}
"=============================surround
"可视模式
"-----------------------------------------------------------------------------------------------|
"|    | 命令            | 说明 + 示例                                                           |
"|---:|:----------------|:----------------------------------------------------------------------|
"|    | S               | 选中的括起来                                                          |
"| 例 | 选中world: S(   | Hello world! => Hello (world)!                                        |
"|---:|:----------------|:----------------------------------------------------------------------|
"|    | gS              | 选中的括起来，括号内文本做新一行                                      |
"| 例 | 选中world: gS{  | Hello world! => Hello { world }!                                      |
"|-----------------------------------------------------------------------------------------------|

"=============================ack
let g:ackprg = 'ag --nogroup --nocolor --column'
"let g:ackprg = 'ag --vimgrep'  (相同作用)

"=============================latex {
let g:vimtex_fold_manual=1
let g:tex_flavor='latex'
    "Starting with Vim 7, the filetype of empty .tex files defaults to
    " 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
    " The following changes the default filetype back to 'tex':
let g:Tex_CustomTemplateDirectory="~/.config/nvim/gogo/laxModel/"

"=============================latex_live
let g:livepreview_previewer = 'zathura'
let g:livepreview_cursorhold_recompile = 0
let g:vimtex_fold_enabled = 1
let g:livepreview_engine = 'pdflatex'
"}
"
"==============================auto_save
let g:auto_save = 1             " enable AutoSave on Vim startup
let g:auto_save_events = ["InsertLeave", "TextChanged"]
let g:auto_save_silent = 1

"==============================Polyglot
let g:python_highlight_all           = 1
let g:python_highlight_indent_errors = 0
let g:python_highlight_space_errors  = 0

"==============================Markdown
let g:instant_markdown_slow = 1
let g:instant_markdown_autostart = 0            "':InstantMarkdownPreview' or 'InstantMarkdownStop'

"==============================Wiki
" let g:vimwiki_list = [{'path': '~/vimwiki/',
                      " \ 'syntax': 'markdown', 'ext': '.md'}]
" let g:vimwiki_conceallevel = 0
" let g:vimwiki_global_ext   = 0

"=========================================================
"==============================deoplete
"=========================================================
let g:deoplete#enable_at_startup = 1
" let g:deoplete#enable_smart_case = 1
    " 用户输入至少两个字符时再开始提示补全
call deoplete#custom#source('LanguageClient',
            \ 'min_pattern_length',
            \ 2)
    " 字符串中不补全
call deoplete#custom#source('_',
            \ 'disabled_syntaxes', ['String']
            \ )
    " 补全结束或离开插入模式时，关闭预览窗口
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

    ">deoplete-ternjs==========================
    let g:deoplete#sources#ternjs#types = 1
        " Whether to include the types of the completions in the result data. Default: 0
    let g:deoplete#sources#ternjs#filetypes = [
                    \ 'jsx',
                    \ 'javascript.jsx',
                    \ 'vue'
                    \ ]
    ">deoplete-Rust===========================
    let g:racer_cmd = "/home/user/.cargo/bin/racer"
    let g:racer_experimental_completer = 1
    ">deoplete-jedi==========================
    " let g:deoplete#sources#jedi#show_docstring 1
    ">echodoc=================================
    let g:echodoc_enable_at_startup = 1
"==============================ShouGo-Defx
" autocmd vimenter * Defx

">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>.
"               LINK                ||
">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>.
"==============================ShouGo-Link
source $HOME/.config/nvim/gogo/finger/deoplete2.rc.vim
source $HOME/.config/nvim/gogo/finger/deoplete-lsp.vim
source $HOME/.config/nvim/gogo/finger/denite.vim
source $HOME/.config/nvim/gogo/finger/defx.vim
source $HOME/.config/nvim/gogo/finger/deo-echodoc.vim

"----------------fix_deoplete
source $HOME/.config/nvim/gogo/finger/fix_deoplete_in_cursors.vim

source $HOME/.config/nvim/gogo/brain/fzf.vim

source $HOME/.config/nvim/gogo/hands/lightline.vim

"=============================ale
" source $HOME/.config/nvim/gogo/brain/ale.vim
"==============================undotree
nnoremap <F5> :UndotreeToggle<CR>

"==============================lsp
" source $HOME/.config/nvim/gogo/brain/nvimLSPonfig.lua

"==============================fzf
set rtp+=~/.fzf
"==============================css-color
