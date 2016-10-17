set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

set tabstop=4
set softtabstop=4
set shiftwidth=4
set nu
syntax on
set t_Co=256

set clipboard=unnamed
set backspace=indent,eol,start
set fileencodings=gbk,bucs-bom,utf-8,utf-16,ig5,gb18030,latin1
let g:map_index=1
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'https://github.com/lhswei/command-t.git' "Plugin 'git://git.wincent.com/command-t.git'
Plugin 'https://github.com/xolox/vim-misc.git' 
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
"Plugin 'ascenator/L9', {'name': 'newL9'}
" the-nerd-tree
Plugin 'FuzzyFinder'
Plugin 'The-NERD-tree'
Plugin 'jellybeans.vim'
Plugin 'genutils'
Plugin 'ctrlp.vim'
Plugin 'powerline/powerline'
Plugin 'lua.vim'
Plugin 'taglist.vim'
Plugin 'listmaps.vim'
Plugin 'AutoComplPop'
Plugin 'bufexplorer.zip'
Plugin 'findfuncname.vim'
Plugin 'find_in_files'
Plugin 'https://github.com/lhswei/command-list.git' "Plugin 'command-list'
Plugin 'neocomplcache-snippets_complete'

Plugin 'mappingmanager'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
" 配色
:colorscheme jellybeans

" complete start
" complete end
" command-t start
let g:CommandTMaxHeight=10
let g:CommandTMatchWindowAtTop=0
" command-t end
"powerline
 set guifont=PowerlineSymbols\ for\ Powerline
" taglist start 
let Tlist_Show_One_File=1  
let Tlist_Exit_OnlyWindow=1 
" taglist end
" complete end
" ctrlp configure star
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.exe     " MacOSX/Linux
let g:ctrlp_custom_ignore = {
      \ 'dir':  '\v[\/]\.(git|hg|svn)$',
      \ 'file': '\v\.(exe|so|dll)$',
      \ 'link': 'some_bad_symbolic_links',
      \ }
let g:ctrlp_mruf_include ='\.c$\|\.cpp$|\.hpp$|\.cc$|\.h$|\.ini$|\.txt$|\.xml$|\.lua$|\.prot$|\.vim$'
let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:10,results:20'
" ctrlp configure end

" powerline config start                
set guifont=PowerlineSymbols\ for\ Powerline
set nocompatible           
set t_Co=256               
let g:Powerline_symbols = 'fancy'
set laststatus=2                    "一个文件也要有状态栏           
let Grep_Default_Filelist = '*.c *.cpp *.hpp *.cc *.h *.ini *.txt *.xml *.lua *.proto *.vim'
" powerline config end

" end of external plugin
" 保存配置文件立即生效
autocmd! bufwritepost .vimrc source ~/.vimrc
"/搜索大小写不敏感
set ignorecase
