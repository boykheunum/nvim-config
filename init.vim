set number
set noexpandtab
set tabstop=2
set nobackup
set nowritebackup
set signcolumn=yes

call plug#begin('~/.config/nvim/plugged')

    Plug 'junegunn/vim-easy-align'

    Plug 'https://github.com/junegunn/vim-github-dashboard.git'

    Plug 'SirVer/ultisnips' |
    Plug 'honza/vim-snippets'

    Plug 'preservim/nerdtree', {'on' : 'NERDTreeToggle'}
    Plug 'tpope/vim-fireplace', {'for' : 'clojure'}

    Plug 'rdnetto/YCM-Generator',{'branch' : 'stable'}

    Plug 'fatih/vim-go',{'tag' : '*'}

    Plug 'nsf/gocode',{'tag' : 'v.20150303', 'rtp' : 'vim'}

    Plug 'junegunn/fzf',{'dir' : '~/.fzf', 'do' : './install --all'}

    Plug '~/my-prototype-plugin'
		Plug 'vim-airline/vim-airline'
		Plug 'vim-airline/vim-airline-themes'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'prettier/vim-prettier', { 'do': 'npm install' }
    Plug 'dracula/vim',{'name' : 'dracula'}
call plug#end()

let g:coc_node_path = '/usr/bin/node'  " Đường dẫn tới binary của Node.js
let g:coc_global_extensions = ['coc-json', 'coc-tsserver', 'coc-eslint']  " Các extension cần thiết cho Node.js

"thiết lập cho prettier
let g:neoformat_enabled_javascript = ['prettier']
" Map Ctrl + Alt + l to :Prettier
nnoremap <C-Alt-l> :Prettier<CR>

colorscheme dracula

let configPath = '~/.config/nvim/vim-config/' 

execute 'source' configPath.'neerdtree.vim'
execute 'source' configPath.'coc.vim'
execute 'source' configPath.'airline.vim'
" Kích hoạt plugin Prettier
autocmd FileType javascript,json,typescript,html,css,scss,markdown
    \ Prettier
