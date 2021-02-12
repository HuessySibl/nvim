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
nnoremap <silent> <F3> :YcmCompleter GoTo<CR>
nnoremap <silent> <F4> :YcmCompleter GoToReferences<CR>
nnoremap <silent> <c-l> :FZFHistory<CR>
nnoremap <silent> <c-p> :FZF<CR>
""key binds""

""flags and config""
set ic
set tabstop=4
""flags and config""

" Markdown.
let g:markdown_fenced_languages = [
			\   'c', 'cpp', 'lisp', 'clojure', 'sh', 'bash=sh', 'css',
			\   'javascript', 'js=javascript', 'json=javascript', 'perl', 'php',
			\   'python', 'ruby', 'html', 'vim', 'desktop', 'diff',
			\ ]
autocmd initvim FileType markdown setlocal spell

set termguicolors
set background=dark
colorscheme palenight


