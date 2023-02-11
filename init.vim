" Requirements - curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
call plug#begin('~/.local/share/nvim/plugged')
" Plugin       - tabnine/YouCompleteMe
" Repository   - https://github.com/tabnine/YouCompleteMe
" Installation - cd ~/.local/share/nvim/plugged/YouCompleteMe && python3 install.py --all --system-libclang
" Requirements - python - pip3 install jedi
" Plug 'tabnine/YouCompleteMe'

" Plugin       - vim-go
" Repository   - https://github.com/fatih/vim-go
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }

" Plugin       - nerdtree
" Repository   - https://github.com/preservim/nerdtree
Plug 'preservim/nerdtree'

" Plugin       - vim-nerdtree-syntax-highlight 
" Repository   - https://github.com/tiagofumo/vim-nerdtree-syntax-highlight
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" Plugin       - nerdcommenter
" Repository   - https://github.com/scrooloose/nerdcommenter
Plug 'scrooloose/nerdcommenter'

" Plugin       - fzf
" Repository   - https://github.com/junegunn/fzf.vim
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Plugin       - lightline
" Repository   - https://github.com/itchyny/lightline.vim
Plug 'itchyny/lightline.vim'

" Plugin       - indentLine
" Repository   - https://github.com/Yggdroot/indentLine
Plug 'Yggdroot/indentLine'

" Plugin       - tabular
" Repository   - https://github.com/godlygeek/tabular
Plug 'godlygeek/tabular'

" Plugin       - vista
" Repository   - https://github.com/liuchengxu/vista.vim
Plug 'liuchengxu/vista.vim'

" Plugin       - ale
" Repository   - https://github.com/dense-analysis/ale
" Requirements - python - pip3 install flake8
"                js     - npm install -g eslint
"                html   - npm install -g htmlhint --save-dev
"                vue    - npm install -g eslint eslint-plugin-vue
" Plug 'dense-analysis/ale'

" Plugin       - vim-lsp 
" Repository   - https://github.com/prabirshrestha/vim-lsp
" Requirements - python - pip3 install python-lsp-server 
" Requirements - :LspInstallServer
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'

" Plugin       - neoformat
" Repository   - https://github.com/sbdchd/neoformat
" Requirements - python                    - pip3 install autopep8
"                typescript/css            - npm install -g prettier
"                javascript                - npm install -g eslint_d
"                shell                     - go get -u mvdan.cc/sh/cmd/shfmt
"                sql                       - brew install pgformatter
"                protobuf                  - brew install clang-format
"                nginx                     - npm install -g nginxbeautifier
"                golang                    - go install github.com/segmentio/golines@latest
Plug 'sbdchd/neoformat'

" Plugin       - vim-colorschemes
" Repository   - https://github.com/flazz/vim-colorschemes
Plug 'flazz/vim-colorschemes'

" Plugin       - open-browser.vim
" Repository   - https://github.com/tyru/open-browser.vim
Plug 'tyru/open-browser.vim'

" Plugin       - aklt/plantuml-syntax
" Repository   - https://github.com/aklt/plantuml-syntax
Plug 'aklt/plantuml-syntax'

" Plugin       - airblade/vim-gitgutter
" Repository   - https://github.com/airblade/vim-gitgutter
Plug 'airblade/vim-gitgutter'

" Plugin       - psliwka/vim-smoothie
" Repository   - https://github.com/psliwka/vim-smoothie
Plug 'psliwka/vim-smoothie'

" Plugin       - vim-doge
" Repository   - https://github.com/kkoomen/vim-doge
Plug 'kkoomen/vim-doge', { 'do': { -> doge#install() } }

" Plugin       - vim-devicons
" Repository   - https://github.com/ryanoasis/vim-devicons
" Requirements - brew tap homebrew/cask-fonts
"                brew install --cask font-hack-nerd-font
Plug 'ryanoasis/vim-devicons'

" Plugin       - vim-startify
" Repository   - https://github.com/mhinz/vim-startify
Plug 'mhinz/vim-startify'

" Plugin       - vim-rainbow
" Repository   - https://github.com/frazrepo/vim-rainbow
Plug 'frazrepo/vim-rainbow'

" Plugin       - bullets
" Repository   - https://github.com/dkarter/bullets.vim
Plug 'dkarter/bullets.vim'

" Plugin       - vim-markdown-toc
" Repository   - https://github.com/mzlogin/vim-markdown-toc
Plug 'mzlogin/vim-markdown-toc'

" Plugin       - coc
" Repository   - https://github.com/neoclide/coc.nvim
" Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Plugin       - nvim-treesitter
" Repository   - https://github.com/nvim-treesitter/nvim-treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Plugin       - vim-hexokinase
" Repository   - https://github.com/RRethy/vim-hexokinase
Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }

" Plugin       - vim-illuminate
" Repository   - https://github.com/RRethy/vim-illuminate
Plug 'RRethy/vim-illuminate'

" Plugin       - copilot
" Repository   - https://github.com/github/copilot.vim
" Plug 'github/copilot.vim'

" Plugin       - tabnine 
" Repository   - https://github.com/codota/tabnine-nvim
" Plug 'codota/tabnine-nvim', { 'do': './dl_binaries.sh' }

call plug#end()

" [basic]
syntax on
filetype plugin indent on
set number
set cursorline
set shiftwidth=4
set tabstop=4
set expandtab
syntax enable
set nobackup
set backspace=indent,eol,start
let mapleader = ","
set encoding=UTF-8
set wrap
set textwidth=500
autocmd FileType html,xhtml,xml,css,javascript,vue setlocal expandtab shiftwidth=2 tabstop=2
nnoremap - <PageDown>
nnoremap = <PageUp>

" [vim-colorschemes]
colorscheme monokai

" [YouCompleteMe]
" let g:ycm_key_list_stop_completion = ['<C-y>', '<Enter>']
" let g:ycm_autoclose_preview_window_after_insertion = 1
" let g:ycm_disable_for_files_larger_than_kb = 1000

" [vim-go]
let g:go_def_mode = 'gopls'
let g:go_info_mode = 'gopls'
" let g:go_fmt_command = "golines"
" let g:go_fmt_options = {
"     \ 'golines': '-m 128',
"     \ }
autocmd FileType go set list lcs=tab:\┊\ 

" [nerdtree]
map <F3> :NERDTreeToggle<CR>
autocmd VimEnter *
            \   if !argc()
            \ |   Startify
            \ |   NERDTree
            \ |   wincmd w
            \ | endif

" [vista]
nmap <F2> :Vista!!<CR>
noremap <c-t> :silent! Vista finder coc<CR>
let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]
" let g:vista_default_executive = 'ale'
let g:vista_default_executive = 'vim_lsp'
let g:vista_fzf_preview = ['right:50%']
let g:vista#renderer#enable_icon = 1
let g:vista#renderer#icons = {
\   "function": "\uf794",
\   "variable": "\uf71b",
\  }

" [neoformat]
let g:neoformat_enabled_html = ['prettier']
let g:neoformat_enabled_css = ['prettier']
let g:neoformat_enabled_javascript = ['prettier']
let g:neoformat_enabled_json = ['prettier']
let g:neoformat_enabled_typescript = ['prettier']
let g:neoformat_enabled_vue = ['prettier']
let g:neoformat_enabled_xml = ['prettier']
let g:neoformat_enabled_yaml = ['prettier']
let g:neoformat_enabled_python = ['autopep8']
let g:neoformat_enabled_markdown = ['prettier']
let g:neoformat_enabled_sql = ['pg_format']
let g:neoformat_go_golines = {
            \ 'exe': 'golines',
            \ 'stdin': 1,
            \ }
let g:neoformat_enabled_go = ['goimports']
au BufWrite * :Neoformat
" au BufWrite *.go,*.proto,*.py,*.html,*.js,*.css,*.vue,*.json,*.xml,*.yml,*.yaml,*.md :Neoformat

" [ale]
" let g:ale_linters = {'json': [], 'proto': []}
" let g:ale_open_list = 1
" let g:ale_linters = {'json': [], 'proto': [], 'go': ['gopls']}
" nmap <silent> dk <Plug>(ale_previous_wrap)
" nmap <silent> dj <Plug>(ale_next_wrap)
" nmap <silent> gr <ESC>:ALEFindReferences<CR>
" nmap <silent> gd <ESC>:ALEHover<CR>
" map <leader>a <ESC>:ALECodeAction<CR>

" [vim-lsp]
let g:lsp_diagnostics_echo_cursor = 1
let g:lsp_diagnostics_float_cursor = 0
map dj <Plug>(lsp-previous-diagnostic)
map dk <Plug>(lsp-next-diagnostic)
map dh <ESC>:LspHover<CR>
map gr <Plug>(lsp-references)
map <leader>a <ESC>::LspCodeAction<CR>

" [asyncomplete]
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr>    pumvisible() ? asyncomplete#close_popup() : "\<cr>"

" [gitgutter]
autocmd BufWritePost * GitGutter

" [vim-doge]
map <leader>d <ESC>:DogeGenerate<CR>

" [vim-rainbow]
" let g:rainbow_active = 1

" [indentLine]
autocmd Filetype json let g:indentLine_setConceal = 0

" [vim-markdown-toc]
let g:vmt_dont_insert_fence = 1
let g:vmt_fence_text = 'TOC'
let g:vmt_fence_closing_text = '/TOC'

" [nvim-treesitter]
lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = { "go", "python", "json", "javascript", "vim", "yaml", "vue", "sql", "lua", "help" },
  ignore_install = { "markdown" },
  auto_install = true,
  highlight = {
    enable = true,
  },
}
EOF

" [vim-hexokinase]
set termguicolors
let g:Hexokinase_highlighters = ['backgroundfull']

" [fzf]
map ff <ESC>:Files<CR>
map fh <ESC>:History<CR>


" [tabnine]
" lua <<EOF
" require('tabnine').setup({
"   disable_auto_comment=true, 
"   accept_keymap="<Tab>",
"   dismiss_keymap = "<C-]>",
"   debounce_ms = 800,
"   suggestion_color = {gui = "#808080", cterm = 244},
"   execlude_filetypes = {"TelescopePrompt"}
" })
" EOF

" [coc]
" set shortmess+=c
" let g:coc_global_extensions = [
" 	\ 'coc-go',
" 	\ 'coc-clangd',
" 	\ 'coc-pydocstring',
" 	\ 'coc-pyright',
" 	\ 'coc-css',
" 	\ 'coc-diagnostic',
" 	\ 'coc-docker',
" 	\ 'coc-eslint',
" 	\ 'coc-prettier',
" 	\ 'coc-gitignore',
" 	\ 'coc-html',
" 	\ 'coc-import-cost',
" 	\ 'coc-json',
" 	\ 'coc-lists',
" 	\ 'coc-snippets',
" 	\ 'coc-stylelint',
" 	\ 'coc-syntax',
" 	\ 'coc-tailwindcss',
" 	\ 'coc-translator',
" 	\ 'coc-tsserver',
" 	\ 'coc-vetur',
" 	\ 'coc-vimlsp',
" 	\ 'coc-xml',
" 	\ 'coc-yaml',
" 	\ 'coc-yank',
"     \ 'coc-highlight',
"     \ 'coc-markdownlint',
"     \ 'coc-sh',
"     \ 'coc-sql',
"     \ 'coc-pairs',
" 	\ 'coc-tabnine']
" 
" inoremap <silent><expr> <TAB>
"       \ pumvisible() ? "\<C-n>" :
"       \ <SID>check_back_space() ? "\<TAB>" :
"       \ coc#refresh()
" inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
" function! s:check_back_space() abort
"   let col = col('.') - 1
"   return !col || getline('.')[col - 1]  =~# '\s'
" endfunction
" 
" inoremap <silent><expr> <c-space> coc#refresh()
" 
" inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
"                               \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
" 
" nmap <silent> dj <Plug>(coc-diagnostic-prev)
" nmap <silent> dk <Plug>(coc-diagnostic-next)
" 
" nmap <silent> gd <Plug>(coc-definition)
" nmap <silent> gy <Plug>(coc-type-definition)
" nmap <silent> gi <Plug>(coc-implementation)
" nmap <silent> gr <Plug>(coc-references)
" 
" nnoremap <silent> <space>d :call <SID>show_documentation()<CR>
" function! s:show_documentation()
"   if (index(['vim','help'], &filetype) >= 0)
"     execute 'h '.expand('<cword>')
"   elseif (coc#rpc#ready())
"     call CocActionAsync('doHover')
"   else
"     execute '!' . &keywordprg . " " . expand('<cword>')
"   endif
" endfunction
" 
" autocmd CursorHold * silent call CocActionAsync('highlight')
" 
" nmap <leader>rn <Plug>(coc-rename)
" 
" xmap <leader>f  <Plug>(coc-format-selected)
" nmap <leader>f  <Plug>(coc-format-selected)
" 
" xmap <leader>a  <Plug>(coc-codeaction-selected)
" nmap <leader>a  <Plug>(coc-codeaction-selected)
" nmap <leader>ac  <Plug>(coc-codeaction)
" 
" nmap <leader>qf  <Plug>(coc-fix-current)
" 
" nmap <leader>cl  <Plug>(coc-codelens-action)
" 
" xmap if <Plug>(coc-funcobj-i)
" omap if <Plug>(coc-funcobj-i)
" xmap af <Plug>(coc-funcobj-a)
" omap af <Plug>(coc-funcobj-a)
" xmap ic <Plug>(coc-classobj-i)
" omap ic <Plug>(coc-classobj-i)
" xmap ac <Plug>(coc-classobj-a)
" omap ac <Plug>(coc-classobj-a)
" 
" nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" 
" nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>
" 
" nmap ts <Plug>(coc-translator-p)
