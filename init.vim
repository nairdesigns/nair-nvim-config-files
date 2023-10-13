set number
set history=1000

" plugin to have the same clipboard
set clipboard=unnamedplus
" All the plugins
call plug#begin('~/.config/nvim/plugged')

" GitGutter plugin
Plug 'airblade/vim-gitgutter'
" Use release branch (recommended)
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Or build from source code by using npm
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'npm ci'}

"update for treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" coc-nvim for IntelliSense/code completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" nvim-treesitter for syntax highlighting
Plug 'nvim-treesitter/nvim-treesitter'

" vim-surround for wrapping text
Plug 'tpope/vim-surround'

" vim-smooth-scroll for smooth scrolling
Plug 'psliwka/vim-smoothie'

" vim-css-color for highlighting color representations
Plug 'ap/vim-css-color'

" git-blame for showing Git blame information
Plug 'tpope/vim-fugitive'

call plug#end()

" enable enter for IntelliSense
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
