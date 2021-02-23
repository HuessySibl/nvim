augroup initvim | autocmd! | augroup END


call plug#begin()

""YouCompleteMe begin""
Plug 'ycm-core/YouCompleteMe', {'do': './install.py --clangd-completer --ts-completer'}
let g:ycm_clangd_args = [
			\ '-cross-file-rename', '--header-insertion=never', '--completion-style=detailed'
			\ ]

let g:ycm_language_server = [{ 'name': 'texlab', 'cmdline': ['texlab'], 'filetypes': ['tex']}]
""YouCompleteMe end""

""vim auto-format begin""
Plug 'Chiel92/vim-autoformat'
""vim auto-format end""

""vim fuzzyfinder begin"
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

let g:fzf_command_prefix = 'FZF'

""vim fuzzyfinder end"

""color scheme begin""
Plug 'drewtempelmeyer/palenight.vim'
""color scheme end""

""AlxlHnr chdir""
Plug 'AlxHnr/project-chdir.vim'
"""AlxlHnr chdir""

call plug#end()

if filereadable(expand('~/.config/nvim/custom/init.vim'))
	execute 'source ' . expand('~/.config/nvim/custom/init.vim')
endif

""key binds""
nnoremap <silent> <F2> :Autoformat<CR>
nnoremap <silent> <F3> :YcmCompleter GoTo<CR>
nnoremap <silent> <F4> :YcmCompleter GoToReferences<CR>
nnoremap <silent> <c-f> :FZFHistory<CR>
nnoremap <silent> <c-p> :FZF<CR>

""window nav"
nnoremap <a-h> <c-w><c-h>
nnoremap <a-j> <c-w><c-j>
nnoremap <a-k> <c-w><c-k>
nnoremap <a-l> <c-w><c-l>
tnoremap <a-h> <c-\><c-n><c-w><c-h>
tnoremap <a-j> <c-\><c-n><c-w><c-j>
tnoremap <a-k> <c-\><c-n><c-w><c-k>
tnoremap <a-l> <c-\><c-n><c-w><c-l>
""window nav"

""key binds""

""flags and config""
set ic
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
set termguicolors
set background=dark
set number
""flags and config""

colorscheme palenight


