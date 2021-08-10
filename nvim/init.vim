syntax enable 
set hidden
set linebreak   "smart wrap
set confirm     "save confirmation
set shiftwidth=4
set autoindent
set tabstop=4
set softtabstop=4
set expandtab
set hls is
set ignorecase
set smartcase
set encoding=utf-8
set number          "display line numbers
set termguicolors   "truecolor enable
set cursorline      "highlights current line
set wildmode=longest,list,full
set splitbelow splitright
set clipboard=unnamedplus
set iskeyword+=-
set updatetime=300
set noswapfile

set t_8f=^[[38:2:%lu:%lu:%lum
set t_8b=^[[48:2:%lu:%lu:%lum

set statusline=
set statusline+=%#PmenuSel#
set statusline+=%#LineNr#
set statusline+=\ %f
set statusline+=%m\
set statusline+=%=
set statusline+=%#CursorColumn#
set statusline+=\ %y
set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
set statusline+=\[%{&fileformat}\]
set statusline+=\ %p%%
set statusline+=\ %l:%c
set statusline+=\ 

vnoremap < <gv
vnoremap > >gv
nnoremap q <nop>
nnoremap Q <nop>
nnoremap K <nop>
nnoremap J <nop>

highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE
