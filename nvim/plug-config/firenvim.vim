"Firenvim exclude websites
let g:firenvim_config = { 
    \ 'globalSettings': {
        \ 'alt': 'all',
    \  },
    \ 'localSettings': {
        \ '.*': {
            \ 'cmdline': 'neovim',
            \ 'content': 'text',
            \ 'priority': 0,
            \ 'selector': 'textarea',
            \ 'takeover': 'always',
        \ },
    \ }
\ }
let fc = g:firenvim_config['localSettings']
let fc['https?:\/\/(client|admin|cs)'] = { 'takeover': 'never', 'priority': 1 }
let fc['regex101.com'] = { 'takeover': 'never', 'priority': 1 }
