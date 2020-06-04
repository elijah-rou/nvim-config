call plug#begin("~/.vim/plugged")
	Plugin Section 
	Plug 'patstockwell/vim-monokai-tasty'
	Plug 'ryanoasis/vim-devicons'
	Plug 'scrooloose/nerdtree'
	Plug 'sheerun/vim-polyglot'
	Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	let g:coc_global_extensions = ['coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-python', 'coc-vetur', 'coc-flutter', 'coc-tabnine', 'coc-rust-analyzer', 'coc-go', 'coc-git']
	Plug 'tpope/vim-fugitive'
	Plug 'junegunn/gv.vim'
	Plug 'mhinz/vim-signify'
	Plug 'vim-airline/vim-airline'
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'christoomey/vim-tmux-navigator'
	Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
	Plug 'Xuyuanp/nerdtree-git-plugin'
	Plug 'preservim/nerdcommenter'
call plug#end()

" Config Section
if (has("termgiucolors"))
	set termguicolors
endif
syntax enable
colorscheme vim-monokai-tasty

" let g:molokai_original = 1
let g:rehash256 = 1

let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''
" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Toggle
nnoremap <silent> <C-b> :NERDTreeToggle<CR>

nnoremap <C-p> :FZF<CR>
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit'
  \}

set relativenumber

let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:NERDTreeGitStatusNodeColorization = 1
let g:NERDTreeGitStatusWithFlags = 1

let g:NERDTreeColorMapCustom = {
    \ "Modified"  : "#528AB3",  
    \ "Staged"    : "#538B54",  
    \ "Untracked" : "#BE5849",  
    \ "Dirty"     : "#299999",  
    \ "Clean"     : "#87939A"   
    \ }

filetype plugin on
