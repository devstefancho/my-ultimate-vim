" Goyo
nnoremap <F5> :Goyo <CR>
function! s:goyo_enter()
  set noshowmode
  set noshowcmd
  set scrolloff=999
  set number
  set rnu
  let g:goyo_width = 120
endfunction

function! s:goyo_leave()
  set showmode
  set showcmd
  set scrolloff=999
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()
