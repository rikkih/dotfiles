call plug#begin('~/.local/share/nvim/plugged')

" Coc nvim - Using release branch
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'pappasam/coc-jedi', { 'do': 'yarn install --frozen-lockfile && yarn build', 'branch': 'main' }

" File Hanlding
Plug 'preservim/nerdtree'
" FZF
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Aesthetics
Plug 'vim-airline/vim-airline'
Plug 'machakann/vim-highlightedyank'
Plug 'morhetz/gruvbox'
" Folding
Plug 'tmhedberg/SimpylFold'

" Commenting
Plug 'scrooloose/nerdcommenter'

" Formatting
Plug 'Chiel92/vim-autoformat'
Plug 'jiangmiao/auto-pairs'
Plug 'wookayin/vim-autoimport'

" Resizing
Plug 'simeji/winresizer'

" Syntax Highlighting
Plug 'sheerun/vim-polyglot'
Plug 'markonm/traces.vim'
Plug 'cespare/vim-toml'

" Snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" Git
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'airblade/vim-gitgutter'

" TMUX
Plug 'christoomey/vim-tmux-navigator'

" HTML
Plug 'alvan/vim-closetag'

call plug#end()
