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
" Plug 'preservim/nerdtree'

" Plugin       - vim-nerdtree-syntax-highlight 
" Repository   - https://github.com/tiagofumo/vim-nerdtree-syntax-highlight
" Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" Plugin       - neo-tree
" Repository   - https://github.com/nvim-neo-tree/neo-tree.nvim
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'MunifTanjim/nui.nvim'
Plug 'nvim-neo-tree/neo-tree.nvim'

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
"Plug 'kyazdani42/nvim-web-devicons'

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

" Plugin       - monokai-pro 
" Repository   - https://github.com/loctvl842/monokai-pro.nvim
Plug 'loctvl842/monokai-pro.nvim'

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
" Plug 'ryanoasis/vim-devicons'
" Plug 'johnstef99/vim-nerdtree-syntax-highlight'

" Plugin       - vim-startify
" Repository   - https://github.com/mhinz/vim-startify
" Plug 'mhinz/vim-startify'

" Plugin       - dashboard-nvim 
" Repository   - https://github.com/glepnir/dashboard-nvim
" Plug 'nvim-tree/nvim-web-devicons'
" Plug 'glepnir/dashboard-nvim'

" Plugin       - alpha-nvim 
" Repository   - https://github.com/goolord/alpha-nvim
Plug 'nvim-tree/nvim-web-devicons'
Plug 'goolord/alpha-nvim'

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
Plug 'jose-elias-alvarez/null-ls.nvim'
Plug 'MunifTanjim/prettier.nvim'


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

" Plugin       - barbecue
" Repository   - https://github.com/utilyre/barbecue.nvim
" Plug 'SmiteshP/nvim-navic'
" Plug 'utilyre/barbecue.nvim'


call plug#end()

" [monokai-pro]
lua << EOF
require("monokai-pro").setup({
  transparent_background = false,
  terminal_colors = true,
  devicons = true, -- highlight the icons of `nvim-web-devicons`
  italic_comments = true,
  filter = "pro", -- classic | octagon | pro | machine | ristretto | spectrum
  -- Enable this will disable filter option
  day_night = {
    enable = false, -- turn off by default
    day_filter = "pro", -- classic | octagon | pro | machine | ristretto | spectrum
    night_filter = "spectrum", -- classic | octagon | pro | machine | ristretto | spectrum
  },
  inc_search = "background", -- underline | background
  background_clear = {
    -- "float_win",
    "toggleterm",
    "telescope",
    "which-key",
    "renamer"
  },-- "float_win", "toggleterm", "telescope", "which-key", "renamer"
  plugins = {
    bufferline = {
      underline_selected = false,
      underline_visible = false,
    },
    indent_blankline = {
      context_highlight = "pro", -- default | pro
    },
  },
  ---@param c Colorscheme
  override = function(c) end,
})
EOF


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
" map <F3> :NERDTreeToggle<CR>
" autocmd VimEnter *
"             \   if !argc()
"             \ |   Startify
"             \ |   NERDTree
"             \ |   wincmd w
"             \ | endif
" 
" " [vista]
" nmap <F2> :Vista!!<CR>
" noremap <c-t> :silent! Vista finder coc<CR>
" let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]
" " let g:vista_default_executive = 'ale'
" let g:vista_default_executive = 'vim_lsp'
" let g:vista_fzf_preview = ['right:50%']
" let g:vista#renderer#enable_icon = 1
" let g:vista#renderer#icons = {
" \   "function": "\uf794",
" \   "variable": "\uf71b",
" \  }

" [neo-tree]
map <F3> :NeoTreeShowToggle<CR>
lua << EOF
vim.api.nvim_create_augroup("neotree", {})
vim.api.nvim_create_autocmd("UiEnter", {
  desc = "Open Neotree automatically",
  group = "neotree",
  callback = function()
    if vim.fn.argc() == 0 then
      vim.cmd "Neotree toggle"
    end
  end,
})

-- If you want icons for diagnostic errors, you'll need to define them somewhere:
local config = {
  -- If a user has a sources list it will replace this one.
  -- Only sources listed here will be loaded.
  -- You can also add an external source by adding it's name to this list.
  -- The name used here must be the same name you would use in a require() call.
  sources = {
    "filesystem",
    "buffers",
    "git_status",
  },
  add_blank_line_at_top = false, -- Add a blank line at the top of the tree.
  close_if_last_window = false, -- Close Neo-tree if it is the last window left in the tab
  -- popup_border_style is for input and confirmation dialogs.
  -- Configurtaion of floating window is done in the individual source sections.
  -- "NC" is a special style that works well with NormalNC set
  close_floats_on_escape_key = true,
  default_source = "filesystem",
  enable_diagnostics = true,
  enable_git_status = true,
  enable_modified_markers = true, -- Show markers for files with unsaved changes.
  enable_refresh_on_write = true, -- Refresh the tree when a file is written. Only used if `use_libuv_file_watcher` is false.
  git_status_async = true,
  -- These options are for people with VERY large git repos
  git_status_async_options = {
    batch_size = 1000, -- how many lines of git status results to process at a time
    batch_delay = 10,  -- delay in ms between batches. Spreads out the workload to let other processes run.
    max_lines = 10000, -- How many lines of git status results to process. Anything after this will be dropped.
                       -- Anything before this will be used. The last items to be processed are the untracked files.
  },
  hide_root_node = false, -- Hide the root node.
  retain_hidden_root_indent = false, -- IF the root node is hidden, keep the indentation anyhow. 
                                     -- This is needed if you use expanders because they render in the indent.
  log_level = "info", -- "trace", "debug", "info", "warn", "error", "fatal"
  log_to_file = false, -- true, false, "/path/to/file.log", use :NeoTreeLogs to show the file
  open_files_in_last_window = true, -- false = open files in top left window
  popup_border_style = "NC", -- "double", "none", "rounded", "shadow", "single" or "solid"
  resize_timer_interval = 500, -- in ms, needed for containers to redraw right aligned and faded content
                               -- set to -1 to disable the resize timer entirely
  --                           -- NOTE: this will speed up to 50 ms for 1 second following a resize
  sort_case_insensitive = false, -- used when sorting files and directories in the tree
  sort_function = nil , -- uses a custom function for sorting files and directories in the tree
  use_popups_for_input = true, -- If false, inputs will use vim.ui.input() instead of custom floats.
  use_default_mappings = true,
  -- source_selector provides clickable tabs to switch between sources.
  source_selector = {
    winbar = false, -- toggle to show selector on winbar
    statusline = false, -- toggle to show selector on statusline
    show_scrolled_off_parent_node = false, -- this will replace the tabs with the parent path
                                           -- of the top visible node when scrolled down.
    tab_labels = { -- falls back to source_name if nil
      filesystem = "  Files ",
      buffers =    "  Buffers ",
      git_status = "  Git ",
      diagnostics = " 裂Diagnostics ",
    },
    content_layout = "start", -- only with `tabs_layout` = "equal", "focus"
    --                start  : |/ 裡 bufname     \/...
    --                end    : |/     裡 bufname \/...
    --                center : |/   裡 bufname   \/...
    tabs_layout = "equal", -- start, end, center, equal, focus
    --             start  : |/  a  \/  b  \/  c  \            |
    --             end    : |            /  a  \/  b  \/  c  \|
    --             center : |      /  a  \/  b  \/  c  \      |
    --             equal  : |/    a    \/    b    \/    c    \|
    --             active : |/  focused tab    \/  b  \/  c  \|
    truncation_character = "…", -- character to use when truncating the tab label
    tabs_min_width = nil, -- nil | int: if int padding is added based on `content_layout`
    tabs_max_width = nil, -- this will truncate text even if `text_trunc_to_fit = false`
    padding = 0, -- can be int or table
    -- padding = { left = 2, right = 0 },
    -- separator = "▕", -- can be string or table, see below
     separator = { left = "▏", right= "▕" },
    -- separator = { left = "/", right = "\\", override = nil },     -- |/  a  \/  b  \/  c  \...
    -- separator = { left = "/", right = "\\", override = "right" }, -- |/  a  \  b  \  c  \...
    -- separator = { left = "/", right = "\\", override = "left" },  -- |/  a  /  b  /  c  /...
    -- separator = { left = "/", right = "\\", override = "active" },-- |/  a  / b:active \  c  \...
    -- separator = "|",                                              -- ||  a  |  b  |  c  |...
    separator_active = nil, -- set separators around the active tab. nil falls back to `source_selector.separator`
    show_separator_on_edge = false,
    --                       true  : |/    a    \/    b    \/    c    \|
    --                       false : |     a    \/    b    \/    c     |
    highlight_tab = "NeoTreeTabInactive",
    highlight_tab_active = "NeoTreeTabActive",
    highlight_background = "NeoTreeTabInactive",
    highlight_separator = "NeoTreeTabSeparatorInactive",
    highlight_separator_active = "NeoTreeTabSeparatorActive",
  },
  --
  --event_handlers = {
  --  {
  --    event = "before_render",
  --    handler = function (state)
  --      -- add something to the state that can be used by custom components
  --    end
  --  },
  --  {
  --    event = "file_opened",
  --    handler = function(file_path)
  --      --auto close
  --      require("neo-tree").close_all()
  --    end
  --  },
  --  {
  --    event = "file_opened",
  --    handler = function(file_path)
  --      --clear search after opening a file
  --      require("neo-tree.sources.filesystem").reset_search()
  --    end
  --  },
  --  {
  --    event = "file_renamed",
  --    handler = function(args)
  --      -- fix references to file
  --      print(args.source, " renamed to ", args.destination)
  --    end
  --  },
  --  {
  --    event = "file_moved",
  --    handler = function(args)
  --      -- fix references to file
  --      print(args.source, " moved to ", args.destination)
  --    end
  --  },
  --  {
  --    event = "neo_tree_buffer_enter",
  --    handler = function()
  --      vim.cmd 'highlight! Cursor blend=100'
  --    end
  --  },
  --  {
  --    event = "neo_tree_buffer_leave",
  --    handler = function()
  --      vim.cmd 'highlight! Cursor guibg=#5f87af blend=0'
  --    end
  --  },
  -- {
  --   event = "neo_tree_window_before_open",
  --   handler = function(args)
  --     print("neo_tree_window_before_open", vim.inspect(args))
  --   end
  -- },
  -- {
  --   event = "neo_tree_window_after_open",
  --   handler = function(args)
  --     vim.cmd("wincmd =")
  --   end
  -- },
  -- {
  --   event = "neo_tree_window_before_close",
  --   handler = function(args)
  --     print("neo_tree_window_before_close", vim.inspect(args))
  --   end
  -- },
  -- {
  --   event = "neo_tree_window_after_close",
  --   handler = function(args)
  --     vim.cmd("wincmd =")
  --   end
  -- }
  --},
  default_component_configs = {
    container = {
      enable_character_fade = true,
      width = "100%",
      right_padding = 0,
    },
    --diagnostics = {
    --  symbols = {
    --    hint = "H",
    --    info = "I",
    --    warn = "!",
    --    error = "X",
    --  },
    --  highlights = {
    --    hint = "DiagnosticSignHint",
    --    info = "DiagnosticSignInfo",
    --    warn = "DiagnosticSignWarn",
    --    error = "DiagnosticSignError",
    --  },
    --},
    indent = {
      indent_size = 2,
      padding = 1,
      -- indent guides
      with_markers = true,
      indent_marker = "│",
      last_indent_marker = "└",
      highlight = "NeoTreeIndentMarker",
      -- expander config, needed for nesting files
      with_expanders = nil, -- if nil and file nesting is enabled, will enable expanders
      expander_collapsed = "",
      expander_expanded = "",
      expander_highlight = "NeoTreeExpander",
    },
    icon = {
      folder_closed = "",
      folder_open = "",
      folder_empty = "ﰊ",
      folder_empty_open = "ﰊ",
      -- The next two settings are only a fallback, if you use nvim-web-devicons and configure default icons there
      -- then these will never be used.
      default = "*",
      highlight = "NeoTreeFileIcon"
    },
    modified = {
      symbol = "[+] ",
      highlight = "NeoTreeModified",
    },
    name = {
      trailing_slash = false,
      use_git_status_colors = true,
      highlight = "NeoTreeFileName",
    },
    git_status = {
      symbols = {
        -- Change type
        added     = "✚", -- NOTE: you can set any of these to an empty string to not show them
        deleted   = "✖",
        modified  = "",
        renamed   = "",
        -- Status type
        untracked = "",
        ignored   = "",
        unstaged  = "",
        staged    = "",
        conflict  = "",
      },
      align = "right",
    },
  },
  renderers = {
    directory = {
      { "indent" },
      { "icon" },
      { "current_filter" },
      {
        "container",
        content = {
          { "name", zindex = 10 },
          -- {
          --   "symlink_target",
          --   zindex = 10,
          --   highlight = "NeoTreeSymbolicLinkTarget",
          -- },
          { "clipboard", zindex = 10 },
          { "diagnostics", errors_only = true, zindex = 20, align = "right", hide_when_expanded = true },
          { "git_status", zindex = 20, align = "right", hide_when_expanded = true },
        },
      },
    },
    file = {
      { "indent" },
      { "icon" },
      {
        "container",
        content = {
          {
            "name",
            zindex = 10
          },
          -- {
          --   "symlink_target",
          --   zindex = 10,
          --   highlight = "NeoTreeSymbolicLinkTarget",
          -- },
          { "clipboard", zindex = 10 },
          { "bufnr", zindex = 10 },
          { "modified", zindex = 20, align = "right" },
          { "diagnostics",  zindex = 20, align = "right" },
          { "git_status", zindex = 20, align = "right" },
        },
      },
    },
    message = {
      { "indent", with_markers = false },
      { "name", highlight = "NeoTreeMessage" },
    },
    terminal = {
      { "indent" },
      { "icon" },
      { "name" },
      { "bufnr" }
    }
  },
  nesting_rules = {},
  window = { -- see https://github.com/MunifTanjim/nui.nvim/tree/main/lua/nui/popup for
             -- possible options. These can also be functions that return these options.
    position = "left", -- left, right, top, bottom, float, current
    width = 40, -- applies to left and right positions
    height = 15, -- applies to top and bottom positions
    auto_expand_width = false, -- expand the window when file exceeds the window width. does not work with position = "float"
    popup = { -- settings that apply to float position only
      size = {
        height = "80%",
        width = "50%",
      },
      position = "50%", -- 50% means center it
      -- you can also specify border here, if you want a different setting from
      -- the global popup_border_style.
    },
    same_level = false, -- Create and paste/move files/directories on the same level as the directory under cursor (as opposed to within the directory under cursor).
    insert_as = "child", -- Affects how nodes get inserted into the tree during creation/pasting/moving of files if the node under the cursor is a directory:
                        -- "child":   Insert nodes as children of the directory under cursor.
                        -- "sibling": Insert nodes  as siblings of the directory under cursor.
    -- Mappings for tree window. See `:h neo-tree-mappings` for a list of built-in commands.
    -- You can also create your own commands by providing a function instead of a string.
    mapping_options = {
      noremap = true,
      nowait = true,
    },
    mappings = {
      ["<space>"] = {
          "toggle_node",
          nowait = false, -- disable `nowait` if you have existing combos starting with this char that you want to use
      },
      ["<2-LeftMouse>"] = "open",
      ["<cr>"] = "open",
      ["<esc>"] = "revert_preview",
      ["P"] = { "toggle_preview", config = { use_float = true } },
      ["l"] = "focus_preview",
      ["S"] = "open_split",
      -- ["S"] = "split_with_window_picker",
      ["s"] = "open_vsplit",
      -- ["s"] = "vsplit_with_window_picker",
      ["t"] = "open_tabnew",
      -- ["<cr>"] = "open_drop",
      -- ["t"] = "open_tab_drop",
      ["w"] = "open_with_window_picker",
      ["C"] = "close_node",
      ["z"] = "close_all_nodes",
      --["Z"] = "expand_all_nodes",
      ["R"] = "refresh",
      ["a"] = {
        "add",
        -- some commands may take optional config options, see `:h neo-tree-mappings` for details
        config = {
          show_path = "none", -- "none", "relative", "absolute"
        }
      },
      ["A"] = "add_directory", -- also accepts the config.show_path and config.insert_as options.
      ["d"] = "delete",
      ["r"] = "rename",
      ["y"] = "copy_to_clipboard",
      ["x"] = "cut_to_clipboard",
      ["p"] = "paste_from_clipboard",
      ["c"] = "copy", -- takes text input for destination, also accepts the config.show_path and config.insert_as options
      ["m"] = "move", -- takes text input for destination, also accepts the config.show_path and config.insert_as options
      ["e"] = "toggle_auto_expand_width",
      ["q"] = "close_window",
      ["?"] = "show_help",
      ["<"] = "prev_source",
      [">"] = "next_source",
    },
  },
  filesystem = {
    window = {
      mappings = {
        ["H"] = "toggle_hidden",
        ["/"] = "fuzzy_finder",
        ["D"] = "fuzzy_finder_directory",
        --["/"] = "filter_as_you_type", -- this was the default until v1.28
        ["#"] = "fuzzy_sorter", -- fuzzy sorting using the fzy algorithm
        -- ["D"] = "fuzzy_sorter_directory",
        ["f"] = "filter_on_submit",
        ["<C-x>"] = "clear_filter",
        ["<bs>"] = "navigate_up",
        ["."] = "set_root",
        ["[g"] = "prev_git_modified",
        ["]g"] = "next_git_modified",
      }
    },
    async_directory_scan = "auto", -- "auto"   means refreshes are async, but it's synchronous when called from the Neotree commands.
                                   -- "always" means directory scans are always async.
                                   -- "never"  means directory scans are never async.
    scan_mode = "shallow", -- "shallow": Don't scan into directories to detect possible empty directory a priori
                           -- "deep": Scan into directories to detect empty or grouped empty directories a priori.
    bind_to_cwd = true, -- true creates a 2-way binding between vim's cwd and neo-tree's root
    cwd_target = {
      sidebar = "tab",   -- sidebar is when position = left or right
      current = "window" -- current is when position = current
    },
    -- The renderer section provides the renderers that will be used to render the tree.
    --   The first level is the node type.
    --   For each node type, you can specify a list of components to render.
    --       Components are rendered in the order they are specified.
    --         The first field in each component is the name of the function to call.
    --         The rest of the fields are passed to the function as the "config" argument.
    filtered_items = {
      visible = false, -- when true, they will just be displayed differently than normal items
      force_visible_in_empty_folder = false, -- when true, hidden files will be shown if the root folder is otherwise empty
      show_hidden_count = true, -- when true, the number of hidden items in each folder will be shown as the last entry
      hide_dotfiles = true,
      hide_gitignored = true,
      hide_hidden = true, -- only works on Windows for hidden files/directories
      hide_by_name = {
        ".DS_Store",
        "thumbs.db"
        --"node_modules",
      },
      hide_by_pattern = { -- uses glob style patterns
        --"*.meta",
        --"*/src/*/tsconfig.json"
      },
      always_show = { -- remains visible even if other settings would normally hide it
        --".gitignored",
      },
      never_show = { -- remains hidden even if visible is toggled to true, this overrides always_show
        --".DS_Store",
        --"thumbs.db"
      },
      never_show_by_pattern = { -- uses glob style patterns
        --".null-ls_*",
      },
    },
    find_by_full_path_words = false,  -- `false` means it only searches the tail of a path.
                                      -- `true` will change the filter into a full path
                                      -- search with space as an implicit ".*", so
                                      -- `fi init`
                                      -- will match: `./sources/filesystem/init.lua
    --find_command = "fd", -- this is determined automatically, you probably don't need to set it
    --find_args = {  -- you can specify extra args to pass to the find command.
    --  fd = {
      --  "--exclude", ".git",
      --  "--exclude",  "node_modules"
    --  }
    --},
    ---- or use a function instead of list of strings
    --find_args = function(cmd, path, search_term, args)
    --  if cmd ~= "fd" then
    --    return args
    --  end
    --  --maybe you want to force the filter to always include hidden files:
    --  table.insert(args, "--hidden")
    --  -- but no one ever wants to see .git files
    --  table.insert(args, "--exclude")
    --  table.insert(args, ".git")
    --  -- or node_modules
    --  table.insert(args, "--exclude")
    --  table.insert(args, "node_modules")
    --  --here is where it pays to use the function, you can exclude more for
    --  --short search terms, or vary based on the directory
    --  if string.len(search_term) < 4 and path == "/home/cseickel" then
    --    table.insert(args, "--exclude")
    --    table.insert(args, "Library")
    --  end
    --  return args
    --end,
    group_empty_dirs = false, -- when true, empty folders will be grouped together
    search_limit = 50, -- max number of search results when using filters
    follow_current_file = false, -- This will find and focus the file in the active buffer every time
                                 -- the current file is changed while the tree is open.
    hijack_netrw_behavior = "open_default", -- netrw disabled, opening a directory opens neo-tree
                                            -- in whatever position is specified in window.position
                          -- "open_current",-- netrw disabled, opening a directory opens within the
                                            -- window like netrw would, regardless of window.position
                          -- "disabled",    -- netrw left alone, neo-tree does not handle opening dirs
    use_libuv_file_watcher = false, -- This will use the OS level file watchers to detect changes
                                    -- instead of relying on nvim autocmd events.
  },
  buffers = {
    bind_to_cwd = true,
    follow_current_file = true, -- This will find and focus the file in the active buffer every time
                                -- the current file is changed while the tree is open.
    group_empty_dirs = true, -- when true, empty directories will be grouped together
    window = {
      mappings = {
        ["<bs>"] = "navigate_up",
        ["."] = "set_root",
        ["bd"] = "buffer_delete",
      },
    },
  },
  git_status = {
    window = {
      mappings = {
        ["A"] = "git_add_all",
        ["gu"] = "git_unstage_file",
        ["ga"] = "git_add_file",
        ["gr"] = "git_revert_file",
        ["gc"] = "git_commit",
        ["gp"] = "git_push",
        ["gg"] = "git_commit_and_push",
      },
    },
  },
  example = {
    renderers = {
      custom = {
        {"indent"},
        {"icon", default="C" },
        {"custom"},
        {"name"}
      }
    },
    window = {
      mappings = {
        ["<cr>"] = "toggle_node",
        ["<C-e>"] = "example_command",
        ["d"] = "show_debug_info",
      },
    },
  },
}
vim.fn.sign_define("DiagnosticSignError",
  {text = " ", texthl = "DiagnosticSignError"})
vim.fn.sign_define("DiagnosticSignWarn",
  {text = " ", texthl = "DiagnosticSignWarn"})
vim.fn.sign_define("DiagnosticSignInfo",
  {text = " ", texthl = "DiagnosticSignInfo"})
vim.fn.sign_define("DiagnosticSignHint",
  {text = "", texthl = "DiagnosticSignHint"})
-- NOTE: this is changed from v1.x, which used the old style of highlight groups
-- in the form "LspDiagnosticsSignWarning"

require("neo-tree").setup({
  close_if_last_window = false, -- Close Neo-tree if it is the last window left in the tab
  popup_border_style = "rounded",
  enable_git_status = true,
  enable_diagnostics = true,
  sort_case_insensitive = false, -- used when sorting files and directories in the tree
  sort_function = nil , -- use a custom function for sorting files and directories in the tree 
  sources = {
    "filesystem",
    "buffers",
    "git_status",
  },
  source_selector = {
    winbar = true,
    statusline = false, -- toggle to show selector on statusline
    content_layout = "center",
    tabs_layout = "equal",
    tab_labels = {
      filesystem = "" .. " Files",
      buffers = "" .. " Bufs",
      git_status = "" .. " Git",
      diagnostics = "裂" .. " Diagnostics",
    },
  },
  -- sort_function = function (a,b)
  --       if a.type == b.type then
  --           return a.path > b.path
  --       else
  --           return a.type > b.type
  --       end
  --   end , -- this sorts files and directories descendantly
  default_component_configs = {
    container = {
      enable_character_fade = true
    },
    indent = {
      indent_size = 2,
      padding = 1, -- extra padding on left hand side
      -- indent guides
      with_markers = true,
      indent_marker = "│",
      last_indent_marker = "└",
      highlight = "NeoTreeIndentMarker",
      -- expander config, needed for nesting files
      with_expanders = nil, -- if nil and file nesting is enabled, will enable expanders
      expander_collapsed = "",
      expander_expanded = "",
      expander_highlight = "NeoTreeExpander",
    },
    icon = {
      folder_closed = "",
      folder_open = "",
      folder_empty = "ﰊ",
      -- The next two settings are only a fallback, if you use nvim-web-devicons and configure default icons there
      -- then these will never be used.
      default = "*",
      highlight = "NeoTreeFileIcon"
    },
    modified = {
      symbol = "[+]",
      highlight = "NeoTreeModified",
    },
    name = {
      trailing_slash = false,
      use_git_status_colors = true,
      highlight = "NeoTreeFileName",
    },
    git_status = {
      symbols = {
        -- Change type
        added     = "", -- or "✚", but this is redundant info if you use git_status_colors on the name
        modified  = "", -- or "", but this is redundant info if you use git_status_colors on the name
        deleted   = "✖",-- this can only be used in the git_status source
        renamed   = "",-- this can only be used in the git_status source
        -- Status type
        untracked = "",
        ignored   = "",
        unstaged  = "",
        staged    = "",
        conflict  = "",
      }
    },
  },
  window = {
    position = "left",
    width = 40,
    mapping_options = {
      noremap = true,
      nowait = true,
    },
    mappings = {
      ["<space>"] = { 
          "toggle_node", 
          nowait = false, -- disable `nowait` if you have existing combos starting with this char that you want to use 
      },
      ["<2-LeftMouse>"] = "open",
      ["<cr>"] = "open",
      ["<esc>"] = "revert_preview",
      ["P"] = { "toggle_preview", config = { use_float = true } },
      ["l"] = "focus_preview",
      ["S"] = "open_split",
      ["s"] = "open_vsplit",
      -- ["S"] = "split_with_window_picker",
      -- ["s"] = "vsplit_with_window_picker",
      ["t"] = "open_tabnew",
      -- ["<cr>"] = "open_drop",
      -- ["t"] = "open_tab_drop",
      ["w"] = "open_with_window_picker",
      --["P"] = "toggle_preview", -- enter preview mode, which shows the current node without focusing
      ["C"] = "close_node",
      -- ['C'] = 'close_all_subnodes',
      ["z"] = "close_all_nodes",
      --["Z"] = "expand_all_nodes",
      ["a"] = { 
        "add",
        -- this command supports BASH style brace expansion ("x{a,b,c}" -> xa,xb,xc). see `:h neo-tree-file-actions` for details
        -- some commands may take optional config options, see `:h neo-tree-mappings` for details
        config = {
          show_path = "none" -- "none", "relative", "absolute"
        }
      },
      ["A"] = "add_directory", -- also accepts the optional config.show_path option like "add". this also supports BASH style brace expansion.
      ["d"] = "delete",
      ["r"] = "rename",
      ["y"] = "copy_to_clipboard",
      ["x"] = "cut_to_clipboard",
      ["p"] = "paste_from_clipboard",
      ["c"] = "copy", -- takes text input for destination, also accepts the optional config.show_path option like "add":
      -- ["c"] = {
      --  "copy",
      --  config = {
      --    show_path = "none" -- "none", "relative", "absolute"
      --  }
      --}
      ["m"] = "move", -- takes text input for destination, also accepts the optional config.show_path option like "add".
      ["q"] = "close_window",
      ["R"] = "refresh",
      ["?"] = "show_help",
      ["<"] = "prev_source",
      [">"] = "next_source",
    }
  },
  nesting_rules = {},
  filesystem = {
    filtered_items = {
      visible = false, -- when true, they will just be displayed differently than normal items
      hide_dotfiles = true,
      hide_gitignored = true,
      hide_hidden = true, -- only works on Windows for hidden files/directories
      hide_by_name = {
        --"node_modules"
      },
      hide_by_pattern = { -- uses glob style patterns
        --"*.meta",
        --"*/src/*/tsconfig.json",
      },
      always_show = { -- remains visible even if other settings would normally hide it
        --".gitignored",
      },
      never_show = { -- remains hidden even if visible is toggled to true, this overrides always_show
        --".DS_Store",
        --"thumbs.db"
      },
      never_show_by_pattern = { -- uses glob style patterns
        --".null-ls_*",
      },
    },
    follow_current_file = false, -- This will find and focus the file in the active buffer every
                                 -- time the current file is changed while the tree is open.
    group_empty_dirs = false, -- when true, empty folders will be grouped together
    hijack_netrw_behavior = "open_default", -- netrw disabled, opening a directory opens neo-tree
                                            -- in whatever position is specified in window.position
                          -- "open_current",  -- netrw disabled, opening a directory opens within the
                                            -- window like netrw would, regardless of window.position
                          -- "disabled",    -- netrw left alone, neo-tree does not handle opening dirs
    use_libuv_file_watcher = false, -- This will use the OS level file watchers to detect changes
                                    -- instead of relying on nvim autocmd events.
    window = {
      mappings = {
        ["<bs>"] = "navigate_up",
        ["."] = "set_root",
        ["H"] = "toggle_hidden",
        ["/"] = "fuzzy_finder",
        ["D"] = "fuzzy_finder_directory",
        ["#"] = "fuzzy_sorter", -- fuzzy sorting using the fzy algorithm
        -- ["D"] = "fuzzy_sorter_directory",
        ["f"] = "filter_on_submit",
        ["<c-x>"] = "clear_filter",
        ["[g"] = "prev_git_modified",
        ["]g"] = "next_git_modified",
      }
    }
  },
  buffers = {
    follow_current_file = true, -- This will find and focus the file in the active buffer every
                                 -- time the current file is changed while the tree is open.
    group_empty_dirs = true, -- when true, empty folders will be grouped together
    show_unloaded = true,
    window = {
      mappings = {
        ["bd"] = "buffer_delete",
        ["<bs>"] = "navigate_up",
        ["."] = "set_root",
      }
    },
  },
  git_status = {
    window = {
      position = "float",
      mappings = {
        ["A"]  = "git_add_all",
        ["gu"] = "git_unstage_file",
        ["ga"] = "git_add_file",
        ["gr"] = "git_revert_file",
        ["gc"] = "git_commit",
        ["gp"] = "git_push",
        ["gg"] = "git_commit_and_push",
      }
    }
  }
})
EOF

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

" [barbecue]
" lua << EOF
" require('barbecue').setup {
"   theme = 'monokai-pro'
" }
" EOF

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
    preselect = cmp.PreselectMode.None,
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
      { name = 'nvim_lsp' },
      { name = 'nvim_lsp_signature_help' },
      { name = 'cmp_tabnine' },
      { name = 'buffer-lines' },
      { name = 'fuzzy_path' },
      { 
        name = 'buffer',
        option = {
          get_bufnrs = function()
            return vim.api.nvim_list_bufs()
          end
        },
      },
    }),
    formatting = {
      format = function(entry, vim_item) 
        local source = entry.source.name;
        vim_item.menu = " [" .. source .. "]"
        return vim_item
      end
    },
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


    -- format
    local group = vim.api.nvim_create_augroup("lsp_format_on_save", { clear = false })
    local event = "BufWritePre" -- or "BufWritePost"
    local async = event == "BufWritePost"
    if client.server_capabilities.documentFormattingProvider then
      vim.keymap.set('n', '<leader>f', function() vim.lsp.buf.format { async = true } end, bufopts)
      vim.api.nvim_clear_autocmds({ buffer = bufnr, group = group })
      vim.api.nvim_create_autocmd(event, {
        buffer = bufnr,
        group = group,
        callback = function()
          vim.lsp.buf.format({ bufnr = bufnr, async = async })
        end,
        desc = "[lsp] format on save",
      })
    end
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
  -- require('lspconfig')['tsserver'].setup {
  --   capabilities = capabilities,
  --   on_attach = on_attach,
  -- }
  -- npm i -g vscode-langservers-extracted
  require('lspconfig')['html'].setup {
    capabilities = capabilities,
    on_attach = function(client, bufnr)
      client.server_capabilities.documentFormattingProvider = false 
      on_attach(client, bufnr)
    end,
  }
  -- npm i -g vscode-langservers-extracted
  require('lspconfig')['eslint'].setup {
    capabilities = capabilities,
    on_attach = on_attach,
  }

  -- npm i -g vscode-langservers-extracted
  require('lspconfig')['jsonls'].setup {
    capabilities = capabilities,
    -- on_attach = on_attach,
    on_attach = function(client, bufnr)
      client.server_capabilities.documentFormattingProvider = false 
      on_attach(client, bufnr)
    end,
  }
  -- yarn global add yaml-language-server
  require('lspconfig')['yamlls'].setup {
    capabilities = capabilities,
    on_attach = on_attach,
    -- on_attach = function(client, bufnr)
    --   client.server_capabilities.documentFormattingProvider = true 
    --   on_attach(client, bufnr)
    -- end,
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
  -- require('lspconfig')['vuels'].setup {
  --   capabilities = capabilities,
  --   on_attach = on_attach,
  -- }
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

  local null_ls = require("null-ls")
  -- null_ls.builtins.formatting.prettier.filetypes = { "html" }
  null_ls.setup({
    sources = { null_ls.builtins.formatting.prettier },
    on_attach = on_attach,
  })
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
      -- theme = 'powerline' 
      -- theme = 'everforest' 
      theme = 'monokai-pro' 
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

" [indent-blankline]
lua <<EOF
require("indent_blankline").setup {
    show_current_context = true,
    show_current_context_start = true,
}
EOF

" [dashboard]
" lua << EOF
" require('dashboard').setup {
"   theme = 'hyper'
" }
" EOF

" [alpha]
lua << EOF
local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")
local logo = {
  night_fury = [[
  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣤⣶⣿⣿⣿⣷⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣀⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣾⠿⣋⣭⢍⣩⣝⢿⣿⣿⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣿⣿⣿⡿⣿⣿⣶⣤⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⠟⣫⣶⣿⣟⣵⣿⣿⣿⣷⣝⢿⣿⣿⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣿⣿⡿⣣⣶⣶⣄⡲⣬⣍⡛⠿⣶⣤⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
  ⠀⠀⠀⠀⠀⠀⠀⢀⣴⢟⣵⣿⣿⣿⢏⣾⣿⡿⣫⣷⣿⣿⡮⡻⣿⣿⣷⣦⡀⠀⠀⠀⠀⣀⣤⣴⣶⣶⣦⡄⠀⠀⠀⠀⠀⠀⢀⣾⣿⣿⠟⣴⣿⣿⣿⣿⣿⣎⠻⣿⣷⣦⣍⡛⠿⣶⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
  ⠀⠀⠀⠀⠀⠀⣠⢟⣵⣿⣿⣿⣿⡏⣾⣿⢟⣾⣿⣿⣿⣿⣷⣿⣮⠻⣿⣿⣿⢦⡀⣠⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⢀⣴⣿⣿⣿⢋⣾⣿⣿⣿⣿⣿⣿⣿⣷⡝⣿⣿⣿⣿⣷⣬⣙⠻⣦⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
  ⠀⠀⠀⠀⠀⡼⣣⣿⣿⣿⣿⣿⣿⢸⣿⡟⣾⣿⣿⣿⣿⣿⣿⣫⣾⣧⣬⣽⣾⣷⣭⣿⣿⣿⣿⣿⣿⣿⠟⠀⠀⢀⣀⣴⣿⣿⣿⡿⣱⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡌⢿⣿⣿⣿⣿⣿⣷⣮⣝⠷⣦⡀⠀⠀⠀⠀⠀⠀⠀
  ⠀⠀⠀⢀⡾⣱⣿⣿⣿⣿⣿⣿⡏⣿⣿⡷⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⣣⣶⣿⣿⣿⣿⣿⣿⣿⠟⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡌⣿⣿⣿⣿⣿⣿⣿⣿⣷⣬⡻⣦⡀⠀⠀⠀⠀⠀
  ⠀⠀⠀⡼⣱⣿⠿⠿⠻⠿⣿⣿⡇⣿⣿⢧⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠿⣿⣿⣿⣿⣵⣶⡎⣿⣿⠿⢟⣛⣫⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡸⣿⣿⣿⣿⡿⠿⢿⣿⣿⣿⣎⢻⡄⠀⠀⠀⠀
  ⠀⠀⠀⣇⠟⠁⠀⠀⠀⠀⠀⠙⢧⢿⣇⣿⡏⠀⢹⡿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⢻⠀⠀⢨⣿⣿⣿⡿⣟⣙⣻⠿⣿⣿⣿⣿⡿⣿⣿⣿⣿⣿⣿⣿⣏⠉⠉⠉⠉⠉⠛⠛⢧⢹⠟⠉⠀⠀⠀⠀⠀⠈⠛⢿⡎⣧⠀⠀⠀⠀
  ⠀⠀⠀⠋⠀⠀⠀⠀⠀⠀⠀⠀⠈⠸⠃⣿⣷⣄⡈⠀⣻⣿⣿⣿⣿⣿⣿⣿⣿⣤⣤⣤⣴⣿⣿⣿⡿⣴⣿⣿⣿⣿⣮⡹⣿⣿⣿⡝⣿⣿⣿⣿⣿⣿⣿⣧⡀⠀⠀⠀⠀⠀⠀⠈⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠁⠙⠀⠀⠀⠀
  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠛⠽⣿⣿⣿⣿⣿⣿⡇⣿⣿⣿⣿⣞⢿⣿⣿⣿⣿⣿⣿⣷⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣬⣛⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠟⠋⠁⠀⢀⣼⣿⣿⣿⣿⣿⣿⢃⣿⣿⣿⣿⣿⡎⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣾⣿⣿⣿⣶⣯⣽⡟⠛⠛⠛⠛⠉⠁⠀⠀⠀⢀⣴⣿⣿⣿⣿⣿⣿⣿⠏⣼⣿⣿⣿⣿⣿⠃⠻⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⣿⣿⣿⣿⣿⣿⣿⣦⠀⠀⠀⠀⠀⠀⠀⣠⣾⣿⣿⣿⣿⣿⣿⣿⡏⣼⣿⣿⣿⣿⣿⠇⠀⠀⠈⢿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢻⣿⣿⣿⣿⣿⣿⣿⣷⡄⠀⠀⠀⢀⣾⣿⣿⣿⣿⣿⣿⣿⣿⡿⢸⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⢻⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢻⣿⣿⣿⣿⣿⣿⣿⣿⡄⠀⠀⣼⣿⣿⣿⣿⣿⣿⣿⣿⡿⠁⣼⣿⣿⣿⣿⣿⣿⡆⠀⠀⠀⠀⢸⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⠿⠉⠿⠿⠍⠻⠿⠍⠃⠀⠀⠃⠹⠿⠇⢨⠿⠻⠀⠛⠁⠀⠃⠘⠛⠈⠛⠛⠀⠁⠀⠀⠀⠀⢸⣿⣿⣿⣿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣄⣀⣀⠀⠤⣤⠤⠤⠤⠤⠤⢤⣤⣤⣤⣤⣀⣀⣀⠀⠀⠀⠀⠀⢀⣠⣿⣿⣿⠿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡐⢚⣫⣭⢄⣶⣾⣿⢋⠞⠁⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠉⠛⠛⠻⠿⠿⠿⣿⡿⠿⠟⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⡿⣵⣿⣿⡏⣾⠿⠛⠛⠈⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠑⠋⠉⠉⠁⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
  ]],
  western_dragon = [[
  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠀⢠⣷⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⡄⠀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ 
  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⣶⣿⠛⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⠛⣿⣶⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ 
  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣤⣴⣶⣿⡿⣟⣽⡏⠀⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠀⢹⣯⣻⢿⣿⣶⣦⣤⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ 
  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣴⣾⣿⣿⡿⢟⣫⣵⣾⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣷⣮⣝⡻⢿⣿⣿⣷⣦⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ 
  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣤⣾⣿⣿⣿⡿⢛⣡⣶⣿⣿⣿⣿⣿⣿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⣿⣿⣿⣿⣿⣿⣶⣌⡛⢿⣿⣿⣿⣷⣤⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ 
  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣴⣾⣿⣿⣿⣿⡿⢋⣴⣿⣿⣿⡿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⢍⣧⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⢿⣿⣿⣿⣦⡙⢿⣿⣿⣿⣿⣷⣦⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ 
  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣾⣿⣿⣿⣿⣿⡿⢋⣴⣿⣿⣿⡿⣫⣾⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣿⢍⣿⢹⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣷⣝⢿⣿⣿⣿⣦⡙⢿⣿⣿⣿⣿⣿⣷⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ 
  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣶⣿⣿⣿⣿⠟⡋⣿⠟⣡⣾⣿⣿⣿⣫⣾⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⢿⢍⣿⣿⣇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣷⣝⣿⣿⣿⣷⣌⠻⣿⢙⠻⣿⣿⣿⣿⣶⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ 
  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣾⡿⠟⢻⣿⡿⢋⣼⢣⢋⣴⣿⣿⣿⢟⣵⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣠⣄⣀⡀⢀⣀⠀⣠⣴⠿⣏⣼⣯⣿⣧⣹⠿⣦⣄⠀⣀⡀⢀⣀⣠⣄⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣮⡻⣿⣿⣿⣦⡙⡞⣧⡙⢿⣿⡟⠻⢿⣷⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ 
  ⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⡿⣫⡴⣡⣿⡿⢡⣿⡟⣡⣾⣿⣿⣿⣫⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣾⣽⣻⠿⣿⣿⣿⣿⣾⡿⠎⣸⡿⣿⣿⢛⣇⠹⢿⣿⣿⣿⣿⣿⠿⣟⣯⣷⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣝⣿⣿⣿⣷⣌⢻⣿⡌⢿⣿⣌⢦⣝⢿⣷⡀⠀⠀⠀⠀⠀⠀⠀⠀ 
  ⠀⠀⠀⠀⠀⠀⠀⣴⡿⢋⣴⡿⣱⣿⡿⢡⣿⣿⣴⣿⣿⣿⡿⣱⣿⣿⣿⣿⣿⣿⠟⢿⣿⣿⣿⠻⢿⣿⣿⣿⣿⣾⣷⡹⣿⡎⣧⣿⣿⣽⣯⣿⣿⣼⡹⣿⢋⣾⣷⣿⣿⣿⣿⡿⠟⣿⣿⣿⡿⠻⣿⣿⣿⣿⣿⣿⣎⢿⣿⣿⣿⣦⣿⣿⡌⢿⣿⣎⢿⣦⡙⢿⣦⠀⠀⠀⠀⠀⠀⠀ 
  ⠀⠀⠀⠀⠀⢀⣾⠟⢠⣿⣿⢱⣿⣿⢁⣾⡿⠿⢿⣿⣿⡟⠔⠉⠛⣿⣿⣿⠏⠀⠀⠀⢺⣿⠃⠀⠀⢻⣿⠛⠿⣿⣿⣿⣌⢹⣝⡮⡙⣻⣟⢋⢕⣫⡏⣡⣿⣿⣿⠿⠛⣿⡟⠀⠀⠘⣿⡗⠀⠀⠀⠹⣿⣿⣿⠛⠉⠢⢻⣿⣿⡿⠿⢟⣷⡈⣿⣿⡎⣿⣿⡄⠻⣷⡀⠀⠀⠀⠀⠀ 
  ⠀⠀⠀⠀⣠⡿⠁⢀⣿⣿⢇⣿⣿⠇⠜⠁⠀⠀⣼⣿⡟⠀⠀⠀⠈⣿⡿⠃⠀⠀⠀⠀⠀⢻⠀⠀⠀⠀⢿⠀⠀⠙⣿⡟⠻⢠⢻⣿⡮⢻⡟⣵⣿⡟⡄⠟⢻⣿⠋⠀⠀⡿⠀⠀⠀⠀⡟⠀⠀⠀⠀⠀⠘⢿⣿⠁⠀⠀⠀⢻⣿⣧⠀⠀⠈⠣⠸⣿⣿⡸⣿⣿⡀⠈⢿⣄⠀⠀⠀⠀ 
  ⠀⠀⠀⣰⠏⠀⢀⣾⣿⣿⢠⣿⡟⠀⠀⠀⠀⠀⣿⡟⠀⠀⠀⠀⠀⡿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠃ ⣿⣷⣭⣿⡩⡩⣳⣭⣾⣿ ⠘⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢿⠀⠀⠀⠀⠀⢻⣿⠀⠀⠀⠀⠀⢻⣿⡄⣿⣿⣷⡀⠀⠹⣆⠀⠀⠀ 
  ⠀⠀⡰⠃⠀⠀⣼⣿⡿⠃⢸⣿⠃⠀⠀⠀⠀⢸⡿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ⡟⠿⣫⣿⣿⣿⣿⣿⣯⡟⠿⢻ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢿⡇⠀⠀⠀⠀⠘⣿⡇⠘⢿⣿⣧⠀⠀⠘⢆⠀⠀ 
  ⠀⠔⠀⠀⠀⢰⣿⠟⠀⠀⢸⣿⠀⠀⠀⠀⠀⡿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢿⣯⡛⣿⡿⣫⣾⡃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢿⠀⠀⠀⠀⠀⣿⡇⠀⠀⠻⣿⡆⠀⠀⠀⠢⠀ 
  ⠀⠀⠀⠀⢀⣿⠉⠀⠀⠀⢸⣿⠀⠀⠀⠀⢰⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢺⣿⡇⣿⡆⠻⣿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⡆⠀⠀⠀⠀⣿⡇⠀⠀⠀⠉⣿⡀⠀⠀⠀⠀ 
  ⠀⠀⠀⠀⣸⠏⠀⠀⠀⠀⠈⣿⠀⠀⠀⠀⠘⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⣞⠀⣿⡇⠰⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠃⠀⠀⠀⠀⣿⠁⠀⠀⠀⠀⠹⣇⠀⠀⠀⠀ 
  ⠀⠀⠀⠀⡟⠀⠀⠀⠀⠀⠀⢻⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠋⠀⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡟⠀⠀⠀⠀⠀⠀⢿⠀⠀⠀⠀ 
  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀    
  ]],
  loc_nek = [[
  ██╗      ██████╗  ██████╗    ███╗   ██╗███████╗██╗  ██╗
  ██║     ██╔═══██╗██╔════╝    ████╗  ██║██╔════╝██║ ██╔╝
  ██║     ██║   ██║██║         ██╔██╗ ██║█████╗  █████╔╝ 
  ██║     ██║   ██║██║         ██║╚██╗██║██╔══╝  ██╔═██╗ 
  ███████╗╚██████╔╝╚██████╗    ██║ ╚████║███████╗██║  ██╗
  ╚══════╝ ╚═════╝  ╚═════╝    ╚═╝  ╚═══╝╚══════╝╚═╝  ╚═╝
  ]],
}

dashboard.section.header.val = vim.split(logo.western_dragon, "\n")
dashboard.section.buttons.val = {
  dashboard.button(
    "r",
    "  Recently files",
    ":Telescope oldfiles <CR>"
  ),
  dashboard.button("s", "  Find Session", ":SearchSession<CR>"),
  dashboard.button(
    "p",
    "  Find project",
    ":Telescope projects <CR>"
  ),
  dashboard.button(
    "i",
    "  Configuration",
    ":edit $MYVIMRC<CR>"
  ),
  dashboard.button("q", "  Quit Neovim", ":qa<CR>"),
}
-- dashboard.section.buttons.type = "button"

dashboard.section.footer.opts.hl = "AlphaFooter"
dashboard.section.header.opts.hl = "AlphaHeader"
dashboard.section.buttons.opts.hl = "AlphaButton"
dashboard.opts.layout[1].val = 1
require'alpha'.setup(dashboard.opts)
EOF

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
set encoding=utf8 
set wrap
set textwidth=500
autocmd FileType html,xhtml,xml,css,javascript,vue setlocal expandtab shiftwidth=2 tabstop=2
nnoremap - <PageDown>
nnoremap = <PageUp>
" colorscheme monokai
" colorscheme tokyonight 
" colorscheme everforest 
colorscheme monokai-pro 

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
