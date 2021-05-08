""Plugin-install
call plug#begin(stdpath('config') . '/vim-plug/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tweekmonster/gofmt.vim'
Plug 'tpope/vim-fugitive'                                                          "vim git
Plug 'vim-utils/vim-man'
Plug 'mbbill/undotree'
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'stsewd/fzf-checkout.vim'
Plug 'vuciv/vim-bujo'
Plug 'tpope/vim-dispatch'
Plug 'theprimeagen/vim-be-good', {'do': './install.sh'}
Plug 'vim-airline/vim-airline'
Plug 'gruvbox-community/gruvbox'
Plug 'vifm/vifm.vim'
"Theme
Plug 'colepeters/spacemacs-theme.vim'
Plug 'sainnhe/gruvbox-material'
Plug 'phanviet/vim-monokai-pro'
Plug 'flazz/vim-colorschemes'
Plug 'chriskempson/base16-vim'
" fuzzy find files
Plug 'ctrlpvim/ctrlp.vim'
" gi gutter
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdcommenter'
"NerdTree plugins (NerdTree makes vim too slow, so now it unstalled)
"Plug 'scrooloose/nerdtree'
"Plug 'Xuyuanp/nerdtree-git-plugin'
"Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
"Plug 'ryanoasis/vim-devicons'
Plug 'mattn/emmet-vim'
"Plug 'vimwiki/vimwiki', { 'branch': 'dev' }
"Plug 'vimwiki/vimwiki' "take note
Plug 'mhinz/vim-startify'                                                         "easy way to save and load session
Plug 'liuchengxu/vim-which-key'                                                   "displays available keybindings in popup.
Plug 'honza/vim-snippets'
Plug 'drewtempelmeyer/palenight.vim'
"Plug 'Galooshi/vim-import-js'
"Plug 'ludovicchabant/vim-gutentags'                                              "auto updating ctags for vim-js-file-import plugin
Plug 'kristijanhusak/vim-js-file-import', {'do': 'npm install'}                   "import js file such as react component
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }          "markdown preview
Plug 'tpope/vim-surround'                                                         "surround with brackets, quotes, tags
Plug 'junegunn/goyo.vim'                                                          "distraction-free mode
Plug 'leafgarland/typescript-vim'                                                 "Typescript syntax
Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(88) } }                "use nvim in chrome
call plug#end()
