"User vim configuration

"Vundle configuration-------------------------------------------------
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree'

Plugin 'Xuyuanp/nerdtree-git-plugin'

call vundle#end()
filetype plugin indent on
"---------------------------------------------------------------------

"User functions

"Toggling relative numbering
function! ToggleRelativeNumbering()
    if(&relativenumber == 1)
        set norelativenumber
        set number
    else
        set relativenumber
    endif
endfunc

"Plugin specific
autocmd vimenter * NERDTree


" Colorscheme

syntax enable
colorscheme minimalist

"Set line numbering

set number

"Set line number width

let line_number_width=3
execute "set numberwidth=".line_number_width

"Text wrap column size
set textwidth=200
"Set tab spacing
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

"Highlight current line
set cursorline

"Visual autocomplete for command menu
set wildmenu

"Redraw only when we need to
set lazyredraw

"Highlight matching braces
set showmatch 

"Search as characters are entered
set incsearch

"Highlight matches
set hlsearch

"Set leader key
let mapleader=","

"Enabling backup
set backup
set backupdir=~/.vim/.backup//
set directory=~/.vim/.swap//
set writebackup


"Remaps

"Saving file
nnoremap <leader>w :w<CR>

"Sourcing vimrc
nnoremap <leader>so :source $MYVIMRC<CR>

"Saving file and sourcing
nnoremap <leader>sso :w<CR> :source $MYVIMRC<CR>

"Save session
nnoremap <leader>s :mksession ~/.vim/sessions/current.vim<CR>

"Remaps to function calls

"Calling toggle relative numbering
nnoremap <c-t> :call ToggleRelativeNumbering()<CR> 

"Switch windows
nnoremap <leader>wi <c-w>
"Toggle NERDTree
nnoremap <leader>nt :NERDTreeToggle<CR>


"Run python
autocmd FileType python nnoremap <buffer> <leader>b :exec '!clear; python' shellescape(@%, 1)<CR>






















