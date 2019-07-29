" map leader key to space
let mapleader = " "

" call pathogen to set the path variable correctly for plugins
call pathogen#infect()

"**************************************************
"*
"* Saving and loading vim views
"*
"**************************************************
" set where to save views
"set viewdir=$HOME
set viewdir=D:\src\vimcfg\view

" autosave and autoload all views
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview

"**************************************************
"*
"* Backup
"*
"**************************************************
set nobackup
set nowritebackup

"**************************************************
"*
"* Indentation, tabs, and spacing
"*
"**************************************************
set shiftwidth=4	" change the shift width to 4 spaces
set softtabstop=4
set tabstop=4		" set tabstop to 4 spaces
set expandtab       " all new tabs will not be changed to spaces
set autoindent      " sets automatic indentation
let g:indent_guides_enable_on_vim_startup=1 " enable indent guides

"**************************************************
"*
"* Tabs and spacing
"*
"**************************************************
set nowrap          " no automatic soft wrapping
set textwidth=0     " sets the wrapping number of characters
set fo+=t           " enables automatic wrapping
set wrapmargin=0    " sets 0 margin for wrapping

"**************************************************
"*
"* Searching
"*
"**************************************************
set hlsearch        " enables highlighting during searching
set ignorecase      " case-insensitive search
set smartcase       " case-sensitive search only when upper-case letter is present

"**************************************************
"*
"* Status displays
"*
"**************************************************
set foldcolumn=3    " the number of characters to display to track opened folds
set number 			" enable line numbers
set showcmd			" displays the current commands
set nofoldenable 	" keep folds open when moving to a different window/buffer
set ruler           " show line and column number at curosr

"**************************************************
"*
"* Syntax highlighting and colorschemes
"*
"**************************************************
let g:jellybeans_use_gui_italics = 0 " disable italics when using jellybeans
syntax on           " turn on syntax highlighting
colorscheme jellybeans " use jellybeans color scheme

" auto-detection of different filetypes
autocmd BufRead,BufNewFile *cel set filetype=cel
autocmd BufRead,BufNewFile *.g2 set filetype=g2
autocmd BufRead,BufNewFile *.sql set filetype=sql
autocmd BufRead,BufNewFile *.pc set filetype=cpp
autocmd BufRead,BufNewFile *.ps1 set filetype=ps1

"**************************************************
"*
"* Cursor behaviour and look
"*
"**************************************************
let &t_ti.="\e[1 q" "configure the cursor to be a block cursor
let &t_SI.="\e[5 q"
let &t_EI.="\e[1 q"
let &t_te.="\e[0 q"

"**************************************************
"*
"* Editting
"*
"**************************************************
set backspace=2     " enable backspace to delete past line breaks
set readonly!       " open all files as writable

"**************************************************
"*
"* Navigation
"*
"**************************************************
set wildignore=*.dll,*.o,*.exe " ignore these files when searching or auto-completing
set noautochdir     " don't automatically change to directory of current file

"**************************************************
"*
"* Macro replay
"*
"**************************************************
set lazyredraw      " disable redrawing until macros complete

" various commands for quick NERDTree navigation
command! Src NERDTree D:\src
command! Dropbox NERDTree D:\Dropbox\
command! Accounts e D:\Dropbox\notes\accounts.txt
command! Recipes e D:\Dropbox\notes\recipesDishes.txt
command! Docs NERDTRee C:\Users\Eric\Documents
command! Ds e C:\Users\Eric\Desktop\games\dont_starve_todo.txt
command! Wow e D:\Dropbox\gaming\wow things\ to\ do.txt

"**************************************************
"*
"* Arpeggio mappings
"*
"**************************************************
" set timeout length in milliseconds
let g:arpeggio_timeoutlen=20

" unmap all function for arpeggio
function Unmapall()
    :call arpeggio#unmap('i', '', 'ji')
    :call arpeggio#unmap('c', '', 'ji')
    :call arpeggio#unmap('o', '', 'ji')
    :call arpeggio#unmap('v', '', 'ji')
    :call arpeggio#unmap('n', '', 'ji')
    :call arpeggio#unmap('i', '', 'kl')
    :call arpeggio#unmap('c', '', 'kl')
    :call arpeggio#unmap('o', '', 'kl')
    :call arpeggio#unmap('v', '', 'kl')
    :call arpeggio#unmap('n', '', 'kl')
    :call arpeggio#unmap('n', '', 'sd')
    :call arpeggio#unmap('v', '', 'sd')
    :call arpeggio#unmap('n', '', 'we')
    :call arpeggio#unmap('v', '', 'we')
    :call arpeggio#unmap('n', '', 'ef')
    :call arpeggio#unmap('v', '', 'ef')
    :call arpeggio#unmap('n', '', 'fj')
    :call arpeggio#unmap('n', '', 'xc')
    :call arpeggio#unmap('n', '', '.,')
    :call arpeggio#unmap('n', '', 'wf')
    :call arpeggio#unmap('n', '', 'jo')
    :call arpeggio#unmap('n', '', 'oi')
endfunction

" map all function for arpeggio
function Mapall()
    " Escape mappings
    :call arpeggio#map('i', '', 0, 'ji', '<Esc>')
    :call arpeggio#map('c', '', 0, 'ji', '<C-c>')
    :call arpeggio#map('o', '', 0, 'ji', '<Esc>')
    :call arpeggio#map('v', '', 0, 'ji', '<Esc>')
    :call arpeggio#map('s', '', 0, 'ji', '<Esc>')
    :call arpeggio#map('x', '', 0, 'ji', '<Esc>')
    :call arpeggio#map('n', '', 0, 'ji', '<Esc>')

    " Save mappings
    :call arpeggio#map('i', '', 0, 'kl', ':w!<CR>:mkview<CR>')
    :call arpeggio#map('c', '', 0, 'kl', ':w!<CR>:mkview<CR>')
    :call arpeggio#map('o', '', 0, 'kl', ':w!<CR>:mkview<CR>')
    :call arpeggio#map('v', '', 0, 'kl', ':w!<CR>:mkview<CR>')
    :call arpeggio#map('s', '', 0, 'kl', ':w!<CR>:mkview<CR>')
    :call arpeggio#map('x', '', 0, 'kl', ':w!<CR>:mkview<CR>')
    :call arpeggio#map('n', '', 0, 'kl', ':w!<CR>:mkview<CR>')

    " Page up and page down mappings
    :call arpeggio#map('n', '', 0, 'sd', '<C-f>')
    :call arpeggio#map('v', '', 0, 'sd', '<C-f>')
    :call arpeggio#map('n', '', 0, 'we', '<C-b>')
    :call arpeggio#map('v', '', 0, 'we', '<C-b>')

    " Mappings for : to take the load of the pinky
    :call arpeggio#map('n', '', 0, 'ef', ':')
    :call arpeggio#map('v', '', 0, 'ef', ':')

    " testing feature
    :call arpeggio#map('n', '', 0, 'fj', 'colorscheme <C-d>')

    " buffer navigation mappings
    :call arpeggio#map('n', '', 0, 'xc', ':bp<CR>')
    :call arpeggio#map('n', '', 0, '.,', ':bn<CR>')

    " visual mode selecting mappings
    :call arpeggio#map('n', '', 0, 'wf', '<C-v>')
    :call arpeggio#map('n', '', 0, 'jo', '<S-v>')

    " toggle fold
    :call arpeggio#map('n', '', 0, 'oi', 'za' )
endfunction
call Mapall()

"**************************************************
"*
"* Window management
"*
"**************************************************
map ` <C-w>

" go to next tab
map <C-Tab> gt

" go to previous tab
map <C-S-Tab> gT

"**************************************************
"*
"* Function key mappings
"*
"**************************************************
" Open quickfix list
map  <F1> :copen<CR>

" Copy all text in the current buffer
map <F2> gg"*yG

" Paste and replace text to the current buffer
map <F3> gg<S-v>Gx"*pgg

" Toggle search highlighting
map <F4> :set hlsearch<CR>
map <F5> :set nohlsearch<CR>

" Close buffer
map <F6> :bd<CR>

" Open scratch
map <F7> :e C:/Users/Eric/Documents/scr<CR>

"Open nerdtree
map <F9> :NERDTreeToggle<CR>

"Open the vimrc file
map <F10> :e ~/_vimrc<CR>

"Open the notes file
map <F11> :e D:/Dropbox/notes/todo.txt<CR>

"Save all and close all
map <F12> :wa<CR>:qa<CR>

"**************************************************
"*
"* Modifier key mappings
"*
"**************************************************
" Copy to * register <A-c>
map ã "*y

" Paste from * register <A-v>
map ö "*p
cmap ö <C-r>*

" Scroll 8 lines at a time
map ê 22jzz " <A-j>
map ë 22kzz " <A-k>

" execute macros
map ñ @q " <A-q>
map ÷ @w " <A-w>
map å @e " <A-e>
map ò @r " <A-r>
map ô @t " <A-t>

" shift a line one indent left or right
map ¬ <S-v>< " <A-<>
map ® <S-v>> " <A->>

" search highlighted <A-a>
map á <A-c>/<A-v><CR>

" recursive search in this folder <A-d>
map ä :vimgrep //gj ./**/* <Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left>

" display all marks <A-f>
map æ :marks<CR>

" map easymotion to use a single leader
map <Leader> <Plug>(easymotion-prefix)

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" mapping to disable and enable arpeggio mappings
map <Leader><F4> :call Mapall()<CR>
map <Leader><F5> :silent! call Unmapall()<CR>
