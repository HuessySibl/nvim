call plug#begin()

""YouCompleteMe begin""
Plug 'ycm-core/YouCompleteMe', {'do': './install.py --clangd-completer'}

let g:ycm_clangd_args = [
			\ '-cross-file-rename', '--header-insertion=never', '--completion-style=detailed'
			\ ]

let g:ycm_language_server = [{ 'name': 'texlab', 'cmdline': ['texlab'], 'filetypes': ['tex']}]

""YouCompleteMe end""

""vim auto-format begin""
Plug 'Chiel92/vim-autoformat'
au BufWrite * :Autoformat

""vim auto-format end""

""vim fuzzyfinder begin"
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

let g:fzf_command_prefix = 'FZF'

""vim fuzzyfinder end"

""color scheme begin""
Plug 'drewtempelmeyer/palenight.vim'
""color scheme end""

call plug#end()

nnoremap <silent> <F3> :YcmCompleter GoTo<CR>
nnoremap <silent> <s-TAB> :FZF<CR>
set background=dark
colorscheme palenight


