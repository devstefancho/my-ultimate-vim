""Key-bindings
let mapleader = "\<Space>"
nnoremap <leader>gc :GCheckout<CR>
nnoremap <leader>ghw :h <C-R>=expand("<cword>")<CR><CR>
nnoremap <leader>prw :CocSearch <C-R>=expand("<cword>")<CR><CR>
nnoremap <leader>pw :Rg <C-R>=expand("<cword>")<CR><CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>u :UndotreeShow<CR>
"nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <leader>pv :call ToggleNetrw() <bar> :vertical resize 30<CR>
nnoremap <Leader>ps :Rg<SPACE>
nnoremap <C-p> :GFiles<CR>
nnoremap <Leader>pf :Files<CR>
nnoremap <Leader><CR> :<c-u>call <sid>Goto_definition() <CR>
nnoremap <F4> :so ~/.config/nvim/init.vim<CR>
nnoremap <Left> :vertical resie -2<CR>
nnoremap <Right> :vertical resize +2<CR>
nnoremap <Up> :resize +2<CR>
nnoremap <Down> :resize -2<CR>
nnoremap <Leader>rp :resize 100<CR>
nnoremap <Leader>ee oif err != nil {<CR>log.Fatalf("%+v\n", err)<CR>}<CR><esc>kkI<esc>
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
vnoremap X "_d
"built-in mapping disable
nnoremap Q <Nop>
" vim TODO
nmap <Leader>tu <Plug>BujoChecknormal
nmap <Leader>th <Plug>BujoAddnormal
let g:bujo#todo_file_path = $HOME . "/.cache/bujo"
" GoTo code navigation.
nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gy <Plug>(coc-type-definition)
nmap <leader>gi <Plug>(coc-implementation)
nmap <leader>gr <Plug>(coc-references)
nmap <leader>rr <Plug>(coc-rename)
nmap <leader>g[ <Plug>(coc-diagnostic-prev)
nmap <leader>g] <Plug>(coc-diagnostic-next)
nmap <silent> <leader>gp <Plug>(coc-diagnostic-prev-error)
nmap <silent> <leader>gn <Plug>(coc-diagnostic-next-error)
nnoremap <leader>cr :CocRestart
nnoremap <silent> K :call <SID>show_documentation()<CR>
"quickly enter new line in normal mode
nnoremap <Leader>o o<Esc>
nnoremap <Leader>n :noh<CR>
"jk key instead of ESC key
inoremap jk <ESC> 

nmap ghs <Plug>(GitGutterStageHunk)
xmap ghs <Plug>(GitGutterStageHunk)
nmap ghu <Plug>(GitGutterUndoHunk)
nmap ghp <Plug>(GitGutterPreviewHunk)

"TAB in general mode will move to text buffer
nnoremap <TAB> :bnext<CR>
"Shift-tab will go back
nnoremap <S-TAB> :bprevious<CR> 

"Better Tabbing
vnoremap > >gv
vnoremap < <gv

"NerdCommenter: Toggle Comment(++ is cmd+/ in iterm2)
vmap ++ <plug>NERDCommenterToggle
nmap ++ <plug>NERDCommenterToggle

"Coc: Remap for rename current word
nmap <F2> <Plug>(coc-rename)

"Netrw: Root directory:make current directory to root directory
nnoremap <leader>` :Ntree<CR> 


"========================================================"
"================ Functions in Keymap ==================="
"========================================================"
"show documetation function
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction


"open implementation to the right split view(custom function)
"buggy: If you quit after invoke this function, this function will not work(it will quit your only window)
let s:first_open=1
function! s:Goto_definition() abort 
    if s:first_open
        rightbelow vs "same as :vertical split and :wincmd l
        normal K 
        wincmd h
        let s:first_open=0
    else 
        wincmd l "If right split window exists then quit
        q
        rightbelow vs
        normal K
        wincmd h
    endif
endfunction
