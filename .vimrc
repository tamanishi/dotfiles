se nu
set tabstop=4
set autoindent
set expandtab
set backspace=indent,eol,start
set autoread
set whichwrap=b,s,<,>,[,]

set incsearch

set laststatus=2
set statusline=%F%m%r%h%w%=[%{&ff}]\ %y\ [%{&fileencoding}]\ [%l/%L]

if &term =~ "xterm-256color" || "screen-256color"
  set t_Co=256
  set t_Sf=[3%dm
  set t_Sb=[4%dm
elseif &term =~ "xterm-color"
  set t_Co=8
  set t_Sf=[3%dm
  set t_Sb=[4%dm
endif

hi PmenuSel cterm=reverse ctermfg=33 ctermbg=222 gui=reverse guifg=#3399ff guibg=#f0e68c

inoremap { {}<Left>
inoremap {<Enter> {}<Left><CR><ESC><S-o>
inoremap ( ()<ESC>i
inoremap (<Enter> ()<Left><CR><ESC><S-o>
inoremap " ""<Left>
inoremap ' ''<Left>
inoremap [ []<Left>
inoremap < <><Left>

" dein start
let s:dein_dir = expand('~/.vim/dein')
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

if &runtimepath !~# '/dein.vim'
  if !isdirectory(s:dein_repo_dir)
    execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
  endif
  execute 'set runtimepath^=' . fnamemodify(s:dein_repo_dir, ':p')
endif

call dein#begin(s:dein_dir)

let s:toml = '~/.vim/dein/dein.toml'

if dein#load_cache([expand('<sfile>'), s:toml])
  call dein#load_toml(s:toml, {'lazy': 0})
  call dein#save_cache()
endif

call dein#end()

if dein#check_install()
  call dein#install()
endif
" dein end

colorscheme molokai
" colorscheme hybrid
syntax on

" forRust
let g:rustfmt_autosave = 1
let g:rustfmt_command = '/Users/msyksnhr/.cargo/bin/rustfmt'

set hidden
let g:racer_cmd = '$HOME/.cargo/bin/racer'
" let $RUST_SRC_PATH = "/usr/local/src/rustc-1.18.0-src/src"
let g:racer_experimental_completer = 1

" forUnite
nnoremap [unite] <Nop>
nmap <Space>u [unite]

