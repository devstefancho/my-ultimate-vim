source $HOME/.config/nvim/vim-plug/plugins.vim          "vim plugins
source $HOME/.config/nvim/plug-config/coc.vim
source $HOME/.config/nvim/plug-config/fzf.vim
source $HOME/.config/nvim/theme/airline.vim
source $HOME/.config/nvim/theme/ascii-art.vim
source $HOME/.config/nvim/theme/color-theme.vim
source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/keys/mapping.vim
"source $HOME/.config/nvim/keys/which-key.vim

autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent! loadview

highlight ColorColumn ctermbg=0 guibg=lightgrey

let loaded_matchparen = 1

"Emmet key
let g:user_emmet_mode="n"
let g:user_emmet_leader_key="," "default leader_key is <c-y> with trailing ,(comma)

let g:NERDTreeIgnore = ['^node_modules$']

" ctrlp
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

" Highlight currently open buffer in NERDTree
autocmd BufEnter * call SyncTree()

"Functions
"sync open file with NERDTree, Check if NERDTree is open or active
function! IsNERDTreeOpen()
  return exists("t:NERDTreeBufName") && (bufwinnr(t:NERDTreeBufName) != -1)
endfunction
" Call NERDTreeFind iff NERDTree is active, current window contains a modifiable, file, and we're not in vimdiff
function! SyncTree()
  if &modifiable && IsNERDTreeOpen() && strlen(expand('%')) > 0 && !&diff
    NERDTreeFind
    wincmd p
  endif
endfunction
"---------------------------------------------------------------------------
"" netrw settings
let g:netrw_liststyle=1
let g:netrw_banner = 1 "Remove banner
let g:netrw_browse_split = 4 "Open file in previous window
let g:netrw_altv = 1 "Open vertical split window to the right side
let g:netrw_preview=1 "Preview in right side
set nocompatible "Limit search for your project
set path+=** "Search all subdirectories with recursively
set wildmenu "Show multifiles on one line when you :find
let g:NetrwIsOpen=0
function! ToggleNetrw()
    if g:NetrwIsOpen
        let i = bufnr("$")
        while (i >= 1)
            if (getbufvar(i, "&filetype") == "netrw")
                silent exe "bwipeout " . i
            endif
            let i-=1
        endwhile
        let g:NetrwIsOpen=0
    else
        let g:NetrwIsOpen=1
        silent Lexplore
    endif
endfunction
let g:netrw_list_hide= netrw_gitignore#Hide()

"=================Unorganized settings==================
"jsx comment
let g:NERDCustomDelimiters={
    \ 'javascript': { 'left': '//', 'right': '', 'leftAlt': '{/*', 'rightAlt': '*/}' },
\}
"vimwiki setup
"let g:vimwiki_list = [{'path': '~/vimwiki/',
                      "\ 'syntax': 'markdown', 'ext': '.md'}]
