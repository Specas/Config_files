"User vim configuration

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

" Colorscheme

syntax enable
colorscheme minimalist

"Set line numbering

set number

"Set line number width

let line_number_width=3
execute "set numberwidth=".line_number_width

"Set tab spacing
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

"Highlight current line
set cursorline

"Filetype specific indent files
filetype indent on

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


























