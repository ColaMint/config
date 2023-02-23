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
" Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
" Plug 'junegunn/fzf.vim'

" Plugin       - telescope 
" Repository   - https://github.com/nvim-telescope/telescope.nvim
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.1' }
Plug 'nvim-telescope/telescope-ui-select.nvim'
Plug 'nvim-telescope/telescope-file-browser.nvim'

" Plugin       - lightline
" Repository   - https://github.com/itchyny/lightline.vim
" Plug 'itchyny/lightline.vim'

" Plugin       - lualine 
" Repository   - https://github.com/nvim-lualine/lualine.nvim
Plug 'nvim-lualine/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'

" Plugin       - indentLine
" Repository   - https://github.com/Yggdroot/indentLine
" Plug 'Yggdroot/indentLine'

" Plugin       - indent-blankline.nvim 
" Repository   - https://github.com/lukas-reineke/indent-blankline.nvim
Plug 'lukas-reineke/indent-blankline.nvim'

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
" Plug 'prabirshrestha/vim-lsp'
" Plug 'mattn/vim-lsp-settings'
" Plug 'folke/lsp-colors.nvim'

" Plugin       - asyncomplete 
" Repository   - https://github.com/prabirshrestha/asyncomplete.vim
" Plug 'prabirshrestha/asyncomplete.vim'
" Plug 'prabirshrestha/asyncomplete-lsp.vim'
" Plug 'kitagry/asyncomplete-tabnine.vim', { 'do': './install.sh' }

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
" Plug 'sbdchd/neoformat'

" Plugin       - vim-colorschemes
" Repository   - https://github.com/flazz/vim-colorschemes
Plug 'flazz/vim-colorschemes'

" Plugin       - tokyonight 
" Repository   - https://github.com/folke/tokyonight.nvim
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }

" Plugin       - everforest 
" Repository   - https://github.com/sainnhe/everforest
Plug 'sainnhe/everforest'

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
Plug 'johnstef99/vim-nerdtree-syntax-highlight'

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
" Usage        - :GenTocGFM 
"              - :UpdateToc
"              - :RemoveToc 
Plug 'mzlogin/vim-markdown-toc'

" Plugin       - markdown-preview
" Repository   - https://github.com/iamcco/markdown-preview.nvim
" Usage        - :MarkdownPreview
"              - :MarkdownPreviewStop
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }


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

" Plugin       - vim-translator
" Repository   - https://github.com/voldikss/vim-translator
Plug 'voldikss/vim-translator'

" Plugin       - barbar 
" Repository   - https://github.com/romgrk/barbar.nvim
Plug 'nvim-tree/nvim-web-devicons'
Plug 'romgrk/barbar.nvim'

" Plugin       - nvim-cmp 
" Repository   - https://github.com/hrsh7th/nvim-cmp
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'amarakon/nvim-cmp-buffer-lines'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/cmp-nvim-lsp-signature-help'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }
Plug 'tzachar/cmp-fuzzy-path'
Plug 'tzachar/fuzzy.nvim'
Plug 'tzachar/cmp-tabnine', { 'do': './install.sh' }

" Plugin       - mason.nvim 
" Repository   - https://github.com/williamboman/mason.nvim
Plug 'williamboman/mason.nvim'

" Plugin       - leap.nvim
" Repository   - https://github.com/ggandor/leap.nvim
Plug 'ggandor/leap.nvim'
Plug 'ggandor/flit.nvim'

" Plugin       - focus 
" Repository   - https://github.com/beauwilliams/focus.nvim
Plug 'beauwilliams/focus.nvim'

" Plugin       - nvim-notify 
" Repository   - https://github.com/rcarriga/nvim-notify
Plug 'rcarriga/nvim-notify'

" Plugin       - toggleterm
" Repository   - https://github.com/akinsho/toggleterm.nvim
Plug 'akinsho/toggleterm.nvim', {'tag' : '*'}

" Plugin       - which-key 
" Repository   - https://github.com/folke/which-key.nvim
Plug 'folke/which-key.nvim'

" Plugin       - nvim-autopairs 
" Repository   - https://github.com/windwp/nvim-autopairs
Plug 'windwp/nvim-autopairs'

" Plugin       - fidget 
" Repository   - https://github.com/j-hui/fidget.nvim
Plug 'j-hui/fidget.nvim'

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
colorscheme monokai
" colorscheme tokyonight 
" colorscheme everforest 

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
" autocmd FileType go set list lcs=tab:\┊\ 

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
" let g:neoformat_enabled_html = ['prettier']
" let g:neoformat_enabled_css = ['prettier']
" let g:neoformat_enabled_javascript = ['prettier']
" let g:neoformat_enabled_json = ['prettier']
" let g:neoformat_enabled_typescript = ['prettier']
" let g:neoformat_enabled_vue = ['prettier']
" let g:neoformat_enabled_xml = ['prettier']
" let g:neoformat_enabled_yaml = ['prettier']
" let g:neoformat_enabled_python = ['autopep8']
" let g:neoformat_enabled_markdown = ['prettier']
" let g:neoformat_enabled_sql = ['pg_format']
" let g:neoformat_enabled_go = ['goimports']
" let g:neoformat_enabled_python = ['yapf']
" au BufWrite * :Neoformat
" au BufWrite *.go,*.proto,*.py,*.html,*.js,*.css,*.vue,*.json,*.xml,*.yml,*.yaml,*.md :Neoformat

" [ale]
" let g:ale_linters = {'json': [], 'proto': []}
" let g:ale_open_list = 1
" let g:ale_linters = {'json': [], 'proto': [], 'go': ['gopls']}
" nmap <silent> dk <Plug>(ale_previous_wrap)
" nmap <silent> dj <Plug>(ale_next_wrap)
" nmap <silent> gr <ESC>:ALEFindReferences -quickfix<CR>
" nmap <silent> gd <ESC>:ALEHover<CR>
" map <leader>a <ESC>:ALECodeAction<CR>

" [vim-lsp]
" let g:lsp_diagnostics_echo_cursor = 1
" let g:lsp_diagnostics_float_cursor = 0
" nmap dj <Plug>(lsp-previous-diagnostic)
" nmap dk <Plug>(lsp-next-diagnostic)
" nmap dh <ESC>:LspHover<CR>
" nmap gr <Plug>(lsp-references)
" map <leader>a <ESC>::LspCodeAction<CR>

" [asyncomplete]
" call asyncomplete#register_source(asyncomplete#sources#tabnine#get_source_options({
"   \ 'name': 'tabnine',
"   \ 'allowlist': ['*'],
"   \ 'completor': function('asyncomplete#sources#tabnine#completor'),
"   \ 'config': {
"   \   'line_limit': 1000,
"   \   'max_num_result': 20,
"   \  },
"   \ }))
" inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
" inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
" inoremap <expr> <cr>    pumvisible() ? asyncomplete#close_popup() : "\<cr>"

" [gitgutter]
autocmd BufWritePost * GitGutter
nmap <leader>gd <ESC>:GitGutterDiffOrig<CR>


" [vim-doge]
map <leader>d <ESC>:DogeGenerate<CR>

" [vim-rainbow]
" let g:rainbow_active = 1

" [indentLine]
" autocmd Filetype json let g:indentLine_setConceal = 0

" [indent-blankline]
lua <<EOF
require("indent_blankline").setup {
    show_current_context = true,
    show_current_context_start = true,
}
EOF

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
" map ff <ESC>:Files<CR>
" map fh <ESC>:History<CR>

" [telescope]
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

lua <<EOF
-- This is your opts table
require("telescope").setup {
  extensions = {
    ["ui-select"] = {
      require("telescope.themes").get_dropdown {
        -- even more opts
      }
    },
    file_browser = {
      theme = "ivy",
      -- disables netrw and use telescope-file-browser in its place
      hijack_netrw = true,
      mappings = {
        ["i"] = {
          -- your custom insert mode mappings
        },
        ["n"] = {
          -- your custom normal mode mappings
        },
      },
    },
  }
}
-- To get ui-select loaded and working with telescope, you need to call
-- load_extension, somewhere after setup function:
require("telescope").load_extension("ui-select")
-- To get telescope-file-browser loaded and working with telescope,
-- you need to call load_extension, somewhere after setup function:
require("telescope").load_extension "file_browser"

-- vim.api.nvim_set_keymap(
--   "n",
--   "<space>fb",
--   ":Telescope file_browser",
--   { noremap = true }
-- )

-- open file_browser with the path of the current buffer
vim.api.nvim_set_keymap(
  "n",
  "<space>fb",
  ":Telescope file_browser path=%:p:h select_buffer=true",
  { noremap = true }
)
EOF

" [vim-translator]
nmap ts <ESC>:TranslateW<CR>

" [barbar]
nnoremap <silent> <A-,>     <Cmd>BufferPrevious<CR>
nnoremap <silent> <A-.>     <Cmd>BufferNext<CR>
nnoremap <silent> <A-<>     <Cmd>BufferMovePrevious<CR>
nnoremap <silent> <A->>     <Cmd>BufferMoveNext<CR>
nnoremap <silent> <A-1>     <Cmd>BufferGoto 1<CR>
nnoremap <silent> <A-2>     <Cmd>BufferGoto 2<CR>
nnoremap <silent> <A-3>     <Cmd>BufferGoto 3<CR>
nnoremap <silent> <A-4>     <Cmd>BufferGoto 4<CR>
nnoremap <silent> <A-5>     <Cmd>BufferGoto 5<CR>
nnoremap <silent> <A-6>     <Cmd>BufferGoto 6<CR>
nnoremap <silent> <A-7>     <Cmd>BufferGoto 7<CR>
nnoremap <silent> <A-8>     <Cmd>BufferGoto 8<CR>
nnoremap <silent> <A-9>     <Cmd>BufferGoto 9<CR>
nnoremap <silent> <A-0>     <Cmd>BufferLast<CR>
nnoremap <silent> <A-p>     <Cmd>BufferPin<CR>
nnoremap <silent> <A-c>     <Cmd>BufferClose<CR>
nnoremap <silent> <Space>bb <Cmd>BufferOrderByBufferNumber<CR>
nnoremap <silent> <Space>bd <Cmd>BufferOrderByDirectory<CR>
nnoremap <silent> <Space>bl <Cmd>BufferOrderByLanguage<CR>
nnoremap <silent> <Space>bw <Cmd>BufferOrderByWindowNumber<CR>

" [nvim-cmp]
set completeopt=menu,menuone,noselect

lua <<EOF
  -- Set up nvim-cmp.
  local cmp = require'cmp'

  cmp.setup({
    snippet = {
      -- REQUIRED - you must specify a snippet engine
      expand = function(args)
        vim.fn["vsnip#anonymous"](args.body) 
      end,
    },
    window = {
      -- completion = cmp.config.window.bordered(),
      -- documentation = cmp.config.window.bordered(),
    },
    mapping = cmp.mapping.preset.insert({
      ['<C-b>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.abort(),
      ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
      ['<Tab>'] = cmp.mapping.select_next_item(),
      ['<S-Tab>'] = cmp.mapping.select_prev_item(),
    }),
    sources = cmp.config.sources({
      { 
        name = 'nvim_lsp',
      },
    }, {
      { 
        name = 'nvim_lsp_signature_help',
      },
    }, {
      { 
        name = 'cmp_tabnine',
      },
    }, {
      { 
        name = 'buffer',
        option = {
          get_bufnrs = function()
            return vim.api.nvim_list_bufs()
          end
        },
      },
    }, {
      { 
        name = 'buffer-lines',
      },
    }, {
      { 
        name = 'fuzzy_path',
      },
    })
  })

  -- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline({ '/', '?' }, {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
      { 
        name = 'buffer',
        option = {
          get_bufnrs = function()
            return vim.api.nvim_list_bufs()
          end
        },
      },
    }
  })

  -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
    --  { name = 'path' }
    --}, {
      { name = 'cmdline' }
    --}, {
    --  { name = 'fuzzy_path' }
    })
  })

  -- Mappings.
  local opts = { noremap=true, silent=true }
  vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, opts)
  vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist, opts)
  vim.keymap.set('n', 'dj', vim.diagnostic.goto_prev, opts)
  vim.keymap.set('n', 'dk', vim.diagnostic.goto_next, opts)

  -- Use an on_attach function to only map the following keys
  -- after the language server attaches to the current buffer
  local on_attach = function(client, bufnr)
    -- Mappings.
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    local bufopts = { noremap=true, silent=true, buffer=bufnr }
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
    vim.keymap.set('n', 'dh', vim.lsp.buf.hover, bufopts)
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
    vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
    vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, bufopts)
    vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
    vim.keymap.set('n', '<space>wl', function()
      print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end, bufopts)
    vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, bufopts)
    vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, bufopts)
    vim.keymap.set('n', '<leader>a', vim.lsp.buf.code_action, bufopts)
    vim.keymap.set('n', 'gr', function() 
      require("telescope.builtin").lsp_references()
    end, bufopts)
    vim.keymap.set('n', '<space>f', function() vim.lsp.buf.format { async = true } end, bufopts)

    client.server_capabilities.documentFormattingProvider = true 
    client.server_capabilities.documentRangeFormattingProvider = true 
  end

  -- Set up lspconfig.
  -- 每种语言第一次打开文件需要执行:Mason来安装对应的lsp-server
  -- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
  local capabilities = require('cmp_nvim_lsp').default_capabilities()
  require('lspconfig')['gopls'].setup {
    capabilities = capabilities,
    on_attach = on_attach,
  }
  require('lspconfig')['pylsp'].setup {
    capabilities = capabilities,
    on_attach = on_attach,
  }
  -- npm i -g typescript typescript-language-server
  require('lspconfig')['tsserver'].setup {
    capabilities = capabilities,
    on_attach = on_attach,
  }
  -- npm i -g vscode-langservers-extracted
  require('lspconfig')['html'].setup {
    capabilities = capabilities,
    on_attach = on_attach,
  }
  -- npm i -g vscode-langservers-extracted
  require('lspconfig')['jsonls'].setup {
    capabilities = capabilities,
    on_attach = on_attach,
  }
  -- yarn global add yaml-language-server
  require('lspconfig')['yamlls'].setup {
    capabilities = capabilities,
    on_attach = on_attach,
    settings = {
      yaml = {
        format = {
          enable = true,
          singleQuote = true,
          bracketSpacing = true,
        },
        schemaStore = {
          enable =true,
        },
      }
    }
  }
  -- npm install -g vls
  require('lspconfig')['vuels'].setup {
    capabilities = capabilities,
    on_attach = on_attach,
  }
  -- npm install -g vim-language-server
  require('lspconfig')['vimls'].setup {
    capabilities = capabilities,
    on_attach = on_attach,
  }
  -- npm i -g bash-language-server
  require('lspconfig')['bashls'].setup {
    capabilities = capabilities,
    on_attach = on_attach,
  }
  -- npm i -g sql-language-server
  -- personal configuration file is located on ~/.config/sql-language-server/.sqllsrc.json
  -- require('lspconfig')['sqlls'].setup {
  --   capabilities = capabilities,
  --   on_attach = on_attach,
  -- }

  vim.cmd [[autocmd BufWritePre * lua vim.lsp.buf.formatting_sync()]]
EOF

" [mason]
lua <<EOF
  require("mason").setup()
EOF

" [leap]
lua require('leap').add_default_mappings()
lua <<EOF
require('flit').setup {
  keys = { f = 'f', F = 'F', t = 't', T = 'T' },
  -- A string like "nv", "nvo", "o", etc.
  labeled_modes = "v",
  multiline = true,
  -- Like `leap`s similar argument (call-specific overrides).
  -- E.g.: opts = { equivalence_classes = {} }
  opts = {}
}
EOF

" [lightline]
" let g:lightline = {
"       \ 'component_function': {
"       \   'filetype': 'MyFiletype',
"       \   'fileformat': 'MyFileformat',
"       \ }
"       \ }
" 
" function! MyFiletype()
"   return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
" endfunction
" 
" function! MyFileformat()
"   return winwidth(0) > 70 ? (&fileformat . ' ' . WebDevIconsGetFileFormatSymbol()) : ''
" endfunction

" [lualine]
lua << END
require('lualine').setup{
    options = { 
      theme = 'powerline' 
      -- theme = 'everforest' 
    }
}
END

" [focus]
lua require("focus").setup()

" [nvim-notify]
lua vim.opt.termguicolors = true

" [toggleterm]
lua << EOF
require('toggleterm').setup{
    open_mapping = [[<c-\>]],
    direction = 'float',
}
EOF

" [which-key]
lua << EOF
vim.o.timeout = true
vim.o.timeoutlen = 300
require("which-key").setup()
EOF

" [nvim-autopairs]
lua << EOF
require("nvim-autopairs").setup {}
EOF

" [fidget]
lua require"fidget".setup{}

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
