call plug#begin('~/.local/share/nvim/plugged')

" Jedi for Python
"Plug 'davidhalter/jedi-vim'
"Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"Plug 'deoplete-plugins/deoplete-jedi'

" Jedi for Javascript
Plug 'wokalski/autocomplete-flow'

" Coc nvim - Using release branch
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'pappasam/coc-jedi', { 'do': 'yarn install --frozen-lockfile && yarn build', 'branch': 'main' }

" File Explorer
Plug 'preservim/nerdtree'

" Aesthetics
Plug 'vim-airline/vim-airline'
Plug 'machakann/vim-highlightedyank'
Plug 'morhetz/gruvbox'

" FZF
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Folding
Plug 'tmhedberg/SimpylFold'

" Commenting
Plug 'scrooloose/nerdcommenter'

" Formatting
Plug 'Chiel92/vim-autoformat'
Plug 'jiangmiao/auto-pairs'
Plug 'wookayin/vim-autoimport'

" Syntax Highlighting
Plug 'sheerun/vim-polyglot'
Plug 'markonm/traces.vim'

" Snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

call plug#end()


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""  PLUG-IN CONFIG
" Colour scheme theme
colorscheme gruvbox

" Jedi config
let g:deoplete#enable_at_startup = 1
let g:python3_host_prog = '/home/rikki/.pyenv/versions/3.9.7/bin/python3.9'

" disable autocompletion, because we use deoplete for completion
let g:jedi#completions_enabled = 0

" open the go-to function in split, not another buffer
let g:jedi#use_splits_not_buffers = "right"

" Coc Settings
nmap <silent> gs :call CocAction('jumpDefinition', 'split')<CR>
nmap <silent> gd :call CocAction('jumpDefinition', 'vsplit')<CR>
nmap <silent> gt :call CocAction('jumpDefinition', 'tab')<CR>

" NERDTree config
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
" Close Auto-completion boxes for jedi
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

" Highlighted Yank config
hi HighlightedyankRegion cterm=reverse gui=reverse
" set highlight duration time to 1500 ms, i.e., 1.5 seconds
let g:highlightedyank_highlight_duration = 1500

" Formatting config
au BufWrite * :Autoformat

" Autopairs config
let g:AutoPairs = {'(':')', '[':']', '{':'}', "'":"'", '"':'"', "`":"`", '```':'```', '"""':'"""', "'''":"'''"}
autocmd FileType html let g:AutoPairs = {'(':')', '[':']', '{':'}', '<':'>', "'":"'", '"':'"', "`":"`", '```':'```', '"""':'"""', "'''":"'''"}

" Move auto-complete boxes to the bottom of the pane
" set splitbelow

" FZF Files
" " --column: Show column number
" --line-number: Show line number
" --no-heading: Do not show file headings in results
" --fixed-strings: Search term as a literal string
" --ignore-case: Case insensitive search
" --no-ignore: Do not respect .gitignore, etc...
" --hidden: Search hidden files and folders
" --follow: Follow symlinks
" --glob: Additional conditions for search (in this case ignore everything in the .git/ folder)
" --color: Search color optionscommand! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>), 1, <bang>0)

command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>), 1, <bang>0)
nnoremap <silent> <C-f> :Files<CR>


" Trigger configuration. You need to change this to something other than <tab> if you use one of the following:
" - https://github.com/Valloric/YouCompleteMe
" - https://github.com/nvim-lua/completion-nvim
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsSnippetDirectories=[$HOME.'/.config/nvim/UltiSnips']

" Formatting config
let g:formatters_python = ["black"]
