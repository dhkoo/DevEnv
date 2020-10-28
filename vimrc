set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'majutsushi/tagbar'
Plugin 'tpope/vim-sensible'                 " vim에 필요한 설정을 자동으로 해주는 plugin
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdcommenter'
Plugin 'Shougo/neocomplcache.vim'           " 자동완성
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'Source-Explorer-srcexpl.vim'
Plugin 'SrcExpl'                            " 커서가 지시하는변수들의 정보를 보여줌
Plugin 'nanotech/jellybeans.vim'            " vim theme
Plugin 'vim-airline/vim-airline'						" vim 내부에서 상태 정보 보이기
Plugin 'vim-airline/vim-airline-themes'
Plugin 'airblade/vim-gitgutter'             " vim with git status(added, modified, and removed lines)
Plugin 'tpope/vim-fugitive'                 " vim with git command(e.g., Gdiff)
Plugin 'blueyed/vim-diminactive'
call vundle#end()

" for vim-airline
let g:airline#extensions#tabline#enabled = 1 " turn on buffer list
let g:airline_theme='hybrid'
" for nathanaelkane/vim-indent-guides
let g:indent_guides_enable_on_vim_startup = 1
" for blueyed/vim-diminactive
let g:diminactive_enable_focus = 1
" for Shougo/neocomplcache.vim
let g:neocomplcache_enable_at_startup = 1

set smartindent
set laststatus=2               " turn on bottom bar
set tabstop=2                  " tab을 space 2칸으로 인식
set shiftwidth=2               " <<, >>를 space 2칸으로 인식
set expandtab                  " tab대신 space
set softtabstop=2              " tab대신 space를 2칸으로 인식
set smarttab
set colorcolumn=80						 " 개행기준 선"

set autochdir                  " Automatically change the current directory"
set nu
set nocompatible
set autoindent
set sm
set title
set hlsearch                   " 검색어 하이라이팅
set cindent
set nobackup									 " 백업파일 만들기 않도록 설정
set noswapfile
set visualbell
set ruler
set fencs=ucs-bom,utf-8,euc-kr.latin1
set fileencoding=utf-8
set tenc=utf-8                 " 터미널 인코딩
set hlsearch                   " 검색어 강조, set hls 도 가능
set ignorecase                 " 검색시 대소문자 무시, set ic 도 가능
set nowrapscan                 " 검색 시 파일 끝에서 되돌려 검색하지 않게
set lbr
set incsearch                  " 키워드 입력시 점진적 검색
set cursorline
set laststatus=2
set background=dark  				   " 하이라이팅 lihgt / dark
set backspace=eol,start,indent " 줄의 끝, 시작, 들여쓰기에서 백스페이스시 이전줄로
set history=1000     				   " vi 편집기록 기억갯수 .viminfo에 기록
set mouse=a          				   " vim에서 마우스 사용
set t_Co=256         				   " 색 조정
set clipboard=unnamedplus,autoselect
set clipboard=unnamed
set encoding=utf-8
set diffopt=vertical

" for tagBar shortcut
nmap <F8> :Tagbar<CR>

" for bnext,previous shortcut
nmap ,q :bprevious<CR>
nmap ,w :bnext<CR>

" for tabnew,tabnext, tabprevious shortcut
nmap ,1 :tabprevious<CR>
nmap ,2 :tabnext<CR>
nmap ,3 :tabnew<CR>

" 현재 디렉토리에 cscope 파일이 없는 경우 상위
" 디렉토리로 이동하여 cscope 파일을 찾는 함수
set nocsverb
function! AddCscopeDatabase()
		let currentdir = getcwd()
		while !filereadable("cscope.out") && getcwd() != "/"
				cd ..
		endwhile

		if filereadable("cscope.out")
				cs add cscope.out
		endif
endfunction

call AddCscopeDatabase()
set csverb

syntax on 					 														  " 구문강조 사용
filetype indent on   														  " 파일 종류에 따른 구문강조
highlight Comment term=bold cterm=bold ctermfg=4  " 코멘트 하이라이트

set background=dark
colorscheme jellybeans

"" 마지막으로 수정된 곳에 커서를 위치함
au BufReadPost *
            \ if line("'\"") > 0 && line("'\"") <= line("$") |
            \ exe "norm g`\"" |
            \ endif
