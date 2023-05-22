local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

-- https://github.com/nvim-treesitter/nvim-treesitter/issues/2254
-- you should NOT set syntax enable, especially when using tree-sitter highlighting
-- 在有nvim-treesitter的情况下，加了这个会导致用vim直接打开指定文件时lsp不能自动启动
-- syntax enable

vim.o.expandtab = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.wrap = true
vim.o.encoding = "utf8"
vim.o.signcolumn = "yes"
vim.o.mouse = ""
vim.o.cursorline = true
vim.o.number = true
vim.g.mapleader = ","
vim.o.backspace = "indent,eol,start"

vim.api.nvim_set_keymap("n", "-", "<PageDown>", { noremap = true })
vim.api.nvim_set_keymap("n", "=", "<PageUp>", { noremap = true })

require("lazy").setup({
	{
		"loctvl842/monokai-pro.nvim",
		config = function()
			require("monokai-pro").setup({
				transparent_background = false,
				terminal_colors = false,
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
					"float_win",
					"toggleterm",
					"telescope",
					"which-key",
					"renamer",
				}, -- "float_win", "toggleterm", "telescope", "which-key", "renamer"
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
				override = function(c)
					return {
						NeoTreeNormal = {
							fg = c.base.white,
							-- bg = '#383838',
						},
						NeoTreeNormalNC = {
							fg = c.base.white,
							-- bg = '#383838',
						},
						NeoTreeRootName = {
							fg = c.base.white,
						},
						NeoTreeDirectoryIcon = {
							fg = c.base.white,
						},
						NeoTreeDirectoryName = {
							fg = c.base.white,
						},
						NeoTreeCursorLine = {
							fg = c.base.yellow,
						},
					}
				end,
			})

			vim.cmd("colorscheme monokai-pro")
		end,
	},
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			"williamboman/mason.nvim",
			"williamboman/mason-lspconfig.nvim",
			"jose-elias-alvarez/null-ls.nvim",
		},
		config = function()
			-- Mason Usage
			-- :Mason
			-- :LspInstall
			require("mason").setup()
			require("mason-lspconfig").setup()

			-- border
			vim.diagnostic.config({
				float = {
					border = "rounded",
				},
			})
			local handlers = {
				["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, { border = "rounded" }),
				["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, { border = "rounded" }),
			}

			-- Mappings.
			local opts = { noremap = true, silent = true }
			vim.keymap.set("n", "<space>e", vim.diagnostic.open_float, opts)
			vim.keymap.set("n", "<space>q", vim.diagnostic.setloclist, opts)
			vim.keymap.set("n", "dj", vim.diagnostic.goto_prev, opts)
			vim.keymap.set("n", "dk", vim.diagnostic.goto_next, opts)

			-- Use an on_attach function to only map the following keys
			-- after the language server attaches to the current buffer
			local on_attach = function(client, bufnr)
				-- Mappings.
				-- See `:help vim.lsp.*` for documentation on any of the below functions
				local bufopts = { noremap = true, silent = true, buffer = bufnr }
				vim.keymap.set("n", "gD", vim.lsp.buf.declaration, bufopts)
				vim.keymap.set("n", "gd", vim.lsp.buf.definition, bufopts)
				vim.keymap.set("n", "dh", vim.lsp.buf.hover, bufopts)
				vim.keymap.set("n", "gi", vim.lsp.buf.implementation, bufopts)
				vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, bufopts)
				vim.keymap.set("n", "<space>wa", vim.lsp.buf.add_workspace_folder, bufopts)
				vim.keymap.set("n", "<space>wr", vim.lsp.buf.remove_workspace_folder, bufopts)
				vim.keymap.set("n", "<space>wl", function()
					print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
				end, bufopts)
				vim.keymap.set("n", "<space>D", vim.lsp.buf.type_definition, bufopts)
				vim.keymap.set("n", "<space>rn", vim.lsp.buf.rename, bufopts)
				vim.keymap.set("n", "<leader>a", vim.lsp.buf.code_action, bufopts)
				vim.keymap.set("n", "gr", function()
					require("telescope.builtin").lsp_references()
				end, bufopts)

				-- format
				local group = vim.api.nvim_create_augroup("lsp_format_on_save", { clear = false })
				local event = "BufWritePre" -- or "BufWritePost"
				local async = event == "BufWritePost"
				if client.server_capabilities.documentFormattingProvider then
					vim.keymap.set("n", "<leader>f", function()
						vim.lsp.buf.format({ async = true })
					end, bufopts)
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
			-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
			local lspconfig = require("lspconfig")
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			-- go install golang.org/x/tools/gopls@latest
			lspconfig.gopls.setup({
				handlers = handlers,
				capabilities = capabilities,
				on_attach = function(client, bufnr)
					client.server_capabilities.documentFormattingProvider = false
					on_attach(client, bufnr)
				end,
				settings = {
					gopls = {
						usePlaceholders = false,
						hints = {
							assignVariableTypes = true,
							compositeLiteralFields = true,
							compositeLiteralTypes = true,
							constantValues = true,
							functionTypeParameters = true,
							parameterNames = true,
							rangeVariableTypes = true,
						},
					},
				},
			})
			-- pip3 install python-lsp-server
			lspconfig.pylsp.setup({
				handlers = handlers,
				capabilities = capabilities,
				on_attach = on_attach,
			})
			-- npm install -g vim-language-server
			lspconfig.vimls.setup({
				handlers = handlers,
				capabilities = capabilities,
				on_attach = on_attach,
			})
			-- npm i -g bash-language-server
			lspconfig.bashls.setup({
				handlers = handlers,
				capabilities = capabilities,
				on_attach = on_attach,
			})
			-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#lemminx
			-- https://github.com/redhat-developer/vscode-xml/releases/download/latest/lemminx-osx-x86_64.zip
			lspconfig.lemminx.setup({
				handlers = handlers,
				capabilities = capabilities,
				on_attach = on_attach,
			})
			-- npm i -g vscode-langservers-extracted
			lspconfig.html.setup({
				handlers = handlers,
				capabilities = capabilities,
				on_attach = on_attach,
			})
			lspconfig.lua_ls.setup({
				handlers = handlers,
				capabilities = capabilities,
				on_attach = function(client, bufnr)
					client.server_capabilities.documentFormattingProvider = false
					on_attach(client, bufnr)
				end,
				settings = {
					Lua = {
						hint = {
							enable = true,
							setType = true,
							arrayIndex = "Disable",
						},
						codelens = {
							enable = true,
						},
						completion = {
							postfix = ".",
							showWord = "Disable",
							workspaceWord = false,
						},
					},
				},
			})

			-- brew install bufbuild/buf/buf
			-- brew install hadolint
			-- pip3 install sqlfluff
			-- brew install tidy-html5
			-- pip3 install yamllint
			-- npm install jsonlint -g
			-- cargo install stylua
			-- go install golang.org/x/tools/cmd/goimports@latest
			-- npm install -g cspell@latest
			-- npm i -g vscode-langservers-extracted
			local null_ls = require("null-ls")
			null_ls.setup({
				sources = {
					null_ls.builtins.formatting.prettier.with({
						filetypes = { "json", "yaml", "javascript", "typescript", "markdown" },
					}),
					null_ls.builtins.diagnostics.buf,
					null_ls.builtins.formatting.buf,
					null_ls.builtins.diagnostics.hadolint,
					-- null_ls.builtins.diagnostics.sqlfluff.with({
					-- 	extra_args = { "--dialect", "mysql" }, --  Available dialects: ansi, athena, bigquery, clickhouse, databricks, db2, exasol, hive, materialize, mysql, oracle, postgres, redshift, snowflake, soql, sparksql, sqlite, teradata, tsq
					-- }),
					-- null_ls.builtins.formatting.sqlfluff.with({
					-- 	extra_args = { "--dialect", "mysql" },
					-- }),
					-- null_ls.builtins.diagnostics.tidy.with({
					-- 	   filetypes = { "html" },
					-- }),
					-- null_ls.builtins.formatting.tidy.with({
					--     filetypes = { "html" },
					-- }),
					null_ls.builtins.diagnostics.jsonlint,
					null_ls.builtins.diagnostics.yamllint,
					null_ls.builtins.formatting.stylua,
					null_ls.builtins.formatting.goimports,
					null_ls.builtins.diagnostics.eslint,
					null_ls.builtins.code_actions.eslint,
					-- null_ls.builtins.diagnostics.cspell,
					-- null_ls.builtins.code_actions.cspell,
				},
				handlers = handlers,
				on_attach = on_attach,
			})
		end,
	},
	{
		"hrsh7th/nvim-cmp",
		dependencies = {
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-path",
			"hrsh7th/cmp-cmdline",
			"hrsh7th/cmp-nvim-lsp-signature-help",
			"tzachar/cmp-fuzzy-path",
			"tzachar/fuzzy.nvim",
			{ "tzachar/cmp-tabnine", build = "./install.sh" },
			{
				"nvim-telescope/telescope-fzf-native.nvim",
				build = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build",
			},
			"amarakon/nvim-cmp-buffer-lines",
			{
				"quangnguyen30192/cmp-nvim-ultisnips",
				dependencies = {
					"SirVer/ultisnips",
					"honza/vim-snippets",
				},
				config = function()
					require("cmp_nvim_ultisnips").setup({})
				end,
			},
		},
		config = function()
			vim.cmd("set completeopt=menu,menuone,noselect")

			-- Set up nvim-cmp.
			local cmp = require("cmp")
			local cmp_ultisnips_mappings = require("cmp_nvim_ultisnips.mappings")

			cmp.setup({
				preselect = cmp.PreselectMode.None,
				snippet = {
					expand = function(args)
						vim.fn["UltiSnips#Anon"](args.body)
					end,
				},
				window = {
					border = "rounded",
					completion = cmp.config.window.bordered(),
					documentation = cmp.config.window.bordered(),
				},
				mapping = cmp.mapping.preset.insert({
					["<C-b>"] = cmp.mapping.scroll_docs(-4),
					["<C-f>"] = cmp.mapping.scroll_docs(4),
					["<C-Space>"] = cmp.mapping.complete(),
					["<C-e>"] = cmp.mapping.abort(),
					["<CR>"] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
					["<Tab>"] = cmp.mapping.select_next_item(),
					["<S-Tab>"] = cmp.mapping.select_prev_item(),
					-- ["<Tab>"] = cmp.mapping(function(fallback)
					--     cmp_ultisnips_mappings.expand_or_jump_forwards(fallback)
					-- end, {
					--     "i",
					--     "s", --[[ "c" (to enable the mapping in command mode) ]]
					-- }),
					-- ["<S-Tab>"] = cmp.mapping(function(fallback)
					--     cmp_ultisnips_mappings.jump_backwards(fallback)
					-- end, {
					--     "i",
					--     "s", --[[ "c" (to enable the mapping in command mode) ]]
					-- }),
				}),
				sources = cmp.config.sources({
					{ name = "nvim_lsp" },
					{ name = "nvim_lsp_signature_help" },
					{ name = "cmp_tabnine" },
					-- { name = 'buffer-lines' },
					-- { name = "fuzzy_path" },
					{ name = "ultisnips" },
					{
						name = "buffer",
						option = {
							get_bufnrs = function()
								return vim.api.nvim_list_bufs()
							end,
						},
					},
				}),
				formatting = {
					format = function(entry, vim_item)
						local source = entry.source.name
						vim_item.menu = " [" .. source .. "]"
						return vim_item
					end,
				},
			})

			-- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
			cmp.setup.cmdline({ "/", "?" }, {
				mapping = cmp.mapping.preset.cmdline(),
				sources = {
					{
						name = "buffer",
						option = {
							get_bufnrs = function()
								return vim.api.nvim_list_bufs()
							end,
						},
					},
				},
			})

			-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
			cmp.setup.cmdline(":", {
				mapping = cmp.mapping.preset.cmdline(),
				sources = cmp.config.sources({
					--  { name = 'path' }
					--}, {
					{ name = "cmdline" },
					--}, {
					--  { name = 'fuzzy_path' }
				}),
			})
		end,
	},
	{
		"nvim-neo-tree/neo-tree.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
			{
				"s1n7ax/nvim-window-picker",
				config = function()
					require("window-picker").setup()
				end,
			},
		},
		config = function()
			require("neo-tree").setup({
				close_if_last_window = false, -- Close Neo-tree if it is the last window left in the tab
				popup_border_style = "rounded",
				enable_git_status = true,
				enable_diagnostics = true,
				sort_case_insensitive = false, -- used when sorting files and directories in the tree
				sort_function = nil, -- use a custom function for sorting files and directories in the tree
				source_selector = {
					winbar = true,
					statusline = false, -- toggle to show selector on statusline
					content_layout = "center",
					tabs_layout = "equal",
					sources = {
						{ source = "filesystem" },
						{ source = "buffers" },
						{ source = "git_status" },
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
						enable_character_fade = true,
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
						highlight = "NeoTreeFileIcon",
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
							added = "", -- or "✚", but this is redundant info if you use git_status_colors on the name
							modified = "", -- or "", but this is redundant info if you use git_status_colors on the name
							deleted = "✖", -- this can only be used in the git_status source
							renamed = "", -- this can only be used in the git_status source
							-- Status type
							untracked = "",
							ignored = "",
							unstaged = "",
							staged = "",
							conflict = "",
						},
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
								show_path = "none", -- "none", "relative", "absolute"
							},
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
					},
				},
				nesting_rules = {},
				filesystem = {
					filtered_items = {
						visible = false, -- when true, they will just be displayed differently than normal items
						hide_dotfiles = false,
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
						},
					},
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
						},
					},
				},
				git_status = {
					window = {
						position = "float",
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
			})

			vim.fn.sign_define("DiagnosticSignError", { text = " ", texthl = "DiagnosticSignError" })
			vim.fn.sign_define("DiagnosticSignWarn", { text = " ", texthl = "DiagnosticSignWarn" })
			vim.fn.sign_define("DiagnosticSignInfo", { text = " ", texthl = "DiagnosticSignInfo" })
			vim.fn.sign_define("DiagnosticSignHint", { text = "", texthl = "DiagnosticSignHint" })

			vim.api.nvim_create_augroup("neotree", {})
			vim.api.nvim_create_autocmd("UiEnter", {
				desc = "Open Neotree automatically",
				group = "neotree",
				callback = function()
					if vim.fn.argc() == 0 then
						vim.cmd("Neotree show")
					end
				end,
			})

			vim.api.nvim_set_keymap("n", "<F3>", "<cmd>NeoTreeShowToggle<cr>", {
				noremap = true,
				desc = "NeoTreeShowToggle",
			})
		end,
	},
	{ "scrooloose/nerdcommenter" },
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.1",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-telescope/telescope-ui-select.nvim",
			"nvim-telescope/telescope-file-browser.nvim",
		},
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({
							-- even more opts
						}),
					},
					file_browser = {
						theme = "ivy",
						-- disables netrw and use telescope-file-browser in its place
						hijack_netrw = false,
						mappings = {
							["i"] = {
								-- your custom insert mode mappings
							},
							["n"] = {
								-- your custom normal mode mappings
							},
						},
					},
				},
			})
			-- To get ui-select loaded and working with telescope, you need to call
			-- load_extension, somewhere after setup function:
			require("telescope").load_extension("ui-select")
			-- To get telescope-file-browser loaded and working with telescope,
			-- you need to call load_extension, somewhere after setup function:
			require("telescope").load_extension("file_browser")

			vim.api.nvim_set_keymap("n", "<leader>ff", "<cmd>Telescope find_files<cr>", {
				noremap = true,
				desc = "Telescope find_files",
			})
			vim.api.nvim_set_keymap("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", {
				noremap = true,
				desc = "Telescope live_grep",
			})
			vim.api.nvim_set_keymap("n", "<leader>fb", "<cmd>Telescope buffers<cr>", {
				noremap = true,
				desc = "Telescope buffers",
			})
			vim.api.nvim_set_keymap("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", {
				noremap = true,
				desc = "Telescope help_tags",
			})
			vim.api.nvim_set_keymap("n", "<space>fb", "<cmd>Telescope file_browser path=%:p:h select_buffer=true<cr>", {
				noremap = true,
				desc = "Telescope file_browser",
			})
		end,
	},
	{
		"nvim-lualine/lualine.nvim",
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
		config = function()
			require("lualine").setup({
				options = {
					theme = "monokai-pro",
				},
				sections = {
					lualine_a = { "mode" },
					lualine_b = { "branch", "diff", "diagnostics" },
					lualine_c = { { "filename", file_status = true, path = 2 } },
					lualine_x = { "encoding", "fileformat", "filetype" },
					lualine_y = { "progress" },
					lualine_z = { "location" },
				},
			})
		end,
	},
	{
		"lukas-reineke/indent-blankline.nvim",
		config = function()
			require("indent_blankline").setup({
				show_current_context = true,
				show_current_context_start = true,
			})
		end,
	},
	{ "godlygeek/tabular" },
	{ "tyru/open-browser.vim" },
	{
		"airblade/vim-gitgutter",
		config = function()
			vim.api.nvim_create_autocmd("BufWritePost", {
				desc = "Run Gitgutter Automatically",
				group = "gitgutter",
				command = "GitGutter",
			})
		end,
	},
	{ "psliwka/vim-smoothie" },
	{
		"kkoomen/vim-doge",
		build = ":call doge#install()",
		config = function()
			vim.api.nvim_set_keymap("n", "<space>d", "<cmd>DogeGenerate<cr>", {
				noremap = true,
				desc = "DogeGenerate",
			})
		end,
	},
	{
		"goolord/alpha-nvim",
		dependencies = {
			"nvim-tree/nvim-web-devicons",
			"ColaMint/pokemon.nvim",
		},
		config = function()
			local alpha = require("alpha")
			local dashboard = require("alpha.themes.dashboard")
			local pokemon = require("pokemon")
			pokemon.setup({
				number = "random",
				size = "large",
			})
			dashboard.section.header.val = pokemon.header()
			dashboard.section.buttons.val = {
				dashboard.button("r", "  Recently files", ":Telescope oldfiles <CR>"),
				dashboard.button("s", "  Restore Session", "<cmd>lua require('persistence').load()<cr>"),
				-- dashboard.button(
				--     "p",
				--     "  Find project",
				--     ":Telescope projects <CR>"
				-- ),
				dashboard.button("i", "  Configuration", ":edit $MYVIMRC<CR>"),
				dashboard.button("q", "  Quit Neovim", ":qa<CR>"),
			}
			dashboard.section.footer.opts.hl = "AlphaFooter"
			dashboard.section.header.opts.hl = "AlphaHeader"
			dashboard.section.buttons.opts.hl = "AlphaButton"
			alpha.setup(dashboard.config)

			vim.api.nvim_set_keymap("n", "<F2>", "<cmd>PokemonTogglePokedex<cr>", {
				noremap = true,
				desc = "PokemonTogglePokedex",
			})
		end,
	},
	{
		"mzlogin/vim-markdown-toc",
		config = function()
			vim.g.vmt_dont_insert_fence = 1
			vim.g.vmt_fence_text = "TOC"
			vim.g.vmt_fence_closing_text = "/TOC"

			vim.api.nvim_set_keymap("n", "<leader>mt", "<cmd>GenTocGFM<cr>", {
				noremap = true,
				desc = "GenTocGFM",
			})
		end,
	},
	{
		"iamcco/markdown-preview.nvim",
		build = ":call mkdp#util#install()",
		config = function()
			vim.api.nvim_set_keymap("n", "<leader>mp", "<cmd>MarkdownPreview<cr>", {
				noremap = true,
				desc = "MarkdownPreview",
			})
		end,
	},
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			require("nvim-treesitter.configs").setup({
				ensure_installed = { "go", "python", "json", "javascript", "vim", "yaml", "vue", "sql", "lua" },
				ignore_install = { "markdown" },
				auto_install = true,
				highlight = {
					enable = true,
				},
			})
		end,
	},
	{
		"rrethy/vim-hexokinase",
		build = "make hexokinase",
		init = function()
			vim.cmd("set termguicolors")
			vim.g.Hexokinase_highlighters = { "backgroundfull" }
		end,
	},
	{ "RRethy/vim-illuminate" },
	-- {
	--     "voldikss/vim-translator",
	--     config = function()
	--         vim.api.nvim_set_keymap("n", "ts", "<cmd>TranslateW<cr>", {
	--             noremap = true,
	--             desc = "TranslateW",
	--         })
	--     end,
	-- },
	{
		"JuanZoran/Trans.nvim",
		branch = "experimental",
		build = ":lua require('Trans').install()",
		keys = {
			{ "mm", mode = { "n", "x" }, "<Cmd>Translate<CR>", desc = " Translate" },
			{ "mk", mode = { "n", "x" }, "<Cmd>TransPlay<CR>", desc = " 自动发音" },
			{ "mi", "<Cmd>TranslateInput<CR>", desc = " Translate From Input" },
		},
		dependencies = { "kkharji/sqlite.lua", lazy = true },
		config = function()
			require("Trans").setup({
				dir = os.getenv("HOME") .. "/.local/share/nvim/Trans.nvim",
			})
		end,
	},
	{
		"romgrk/barbar.nvim",
		dependencies = "nvim-tree/nvim-web-devicons",
		config = function()
			vim.cmd([[
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
            ]])
		end,
	},
	{
		"ggandor/leap.nvim",
		config = function()
			require("leap").add_default_mappings()
		end,
	},
	{
		"beauwilliams/focus.nvim",
		config = function()
			require("focus").setup()
		end,
	},
	{
		"rcarriga/nvim-notify",
		config = function()
			vim.opt.termguicolors = true
			vim.notify = require("notify")
		end,
	},
	{
		"akinsho/toggleterm.nvim",
		version = "*",
		config = function()
			require("toggleterm").setup({
				open_mapping = [[<c-\>]],
				direction = "float",
			})
		end,
	},
	{
		"folke/which-key.nvim",
		config = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 300
			require("which-key").setup()
		end,
	},
	{
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup({})
		end,
	},
	{
		"j-hui/fidget.nvim",
		config = function()
			require("fidget").setup({})
		end,
	},
	{
		"folke/persistence.nvim",
		config = function()
			require("persistence").setup({})

			vim.api.nvim_set_keymap("n", "<leader>qs", "<cmd>lua require('persistence').load()<cr>", {
				noremap = true,
				desc = "restore the session for the current directory",
			})
			vim.api.nvim_set_keymap("n", "<leader>ql", [[<cmd>lua require("persistence").load({ last = true })<cr>]], {
				noremap = true,
				desc = "restore the last session",
			})
			vim.api.nvim_set_keymap("n", "<leader>qd", [[<cmd>lua require("persistence").stop()<cr>]], {
				noremap = true,
				desc = "stop Persistence",
			})
		end,
	},
	{
		"kdheepak/lazygit.nvim",
		config = function()
			require("telescope").load_extension("lazygit")
			vim.api.nvim_set_keymap("n", "<leader>gg", [[<cmd>LazyGit<cr>]], {
				noremap = true,
				desc = "LazyGit",
			})
		end,
	},
	{
		"numToStr/Comment.nvim",
		config = function()
			require("Comment").setup()
		end,
	},
	--{
	--    "xiyaowong/nvim-transparent",
	--    config = function()
	--        require("transparent").setup({
	--            enable = true,
	--            extra_groups = "all",
	--            exclude = {},
	--            ignore_linked_group = true,
	--        })
	--    end,
	--},
	{
		"lvimuser/lsp-inlayhints.nvim",
		config = function()
			require("lsp-inlayhints").setup({
				debug_mode = true,
			})
			vim.api.nvim_create_augroup("LspAttach_inlayhints", {})
			vim.api.nvim_create_autocmd("LspAttach", {
				group = "LspAttach_inlayhints",
				callback = function(args)
					if not (args.data and args.data.client_id) then
						return
					end

					local bufnr = args.buf
					local client = vim.lsp.get_client_by_id(args.data.client_id)
					require("lsp-inlayhints").on_attach(client, bufnr)
				end,
			})
		end,
	},
	--{
	--    "VidocqH/lsp-lens.nvim",
	--    config = function()
	--        require("lsp-lens").setup({
	--            enable = true,
	--            include_declaration = false, -- Reference include declaration
	--            sections = { -- Enable / Disable specific request
	--                definition = false,
	--                references = true,
	--                implementation = true,
	--            },
	--        })
	--    end,
	--},
	-- {
	--     "kamykn/spelunker.vim",
	--     config = function()
	--         vim.cmd("set nospell")
	--     end,
	-- },
	{
		"folke/noice.nvim",
		dependencies = {
			"MunifTanjim/nui.nvim",
			"rcarriga/nvim-notify",
		},
		config = function()
			require("noice").setup({})
		end,
	},
	--{
	--    name = "cursor",
	--    dir = "/Users/liming/go/src/github.com/ColaMint/cursor.nvim",
	--    dependencies = {
	--        "nvim-lua/plenary.nvim",
	--        "MunifTanjim/nui.nvim",
	--    },
	--    keys = {
	--        { "cc", mode = { "n", "x" }, "<Cmd>CursorAsk<CR>", desc = "Ask Cursor" },
	--        {
	--            "cd",
	--            mode = { "n", "x" },
	--            "<Cmd>CursorChatBasedOnBuffer<CR>",
	--            desc = "Chat with Cursor Based on Buffer",
	--        },
	--        { "ce", mode = { "n", "x" }, "<Cmd>CursorChat<CR>", desc = "Chat with Cursor" },
	--    },
	--    config = function()
	--        -- require("cursor").query()
	--    end,
	--},
	{
		"liuchengxu/vista.vim",
		keys = {
			{ "<F4>", mode = { "n", "x" }, "<Cmd>Vista!!<CR>", desc = "Open/Close vista window" },
		},
		config = function()
			vim.g.vista_icon_indent = { "╰─▸ ", "├─▸ " }
			vim.g.vista_default_executive = "nvim_lsp"
			vim.g.vista_fzf_preview = { "right:50%" }
			vim.g["vista#renderer#enable_icon"] = 1
		end,
	},
	{
		"tpope/vim-sleuth",
		event = "VeryLazy",
	},
	{
		"krivahtoo/silicon.nvim",
		build = "./install.sh build",
		config = function()
			require("silicon").setup({
				font = "Hack=16",
				theme = "Monokai Extended",
				watermark = {
					text = " @ColaMint",
				},
				window_title = function()
					return vim.fn.fnamemodify(vim.fn.bufname(vim.fn.bufnr()), ":~:.")
				end,
			})
		end,
	},
	{
		"lewis6991/satellite.nvim",
		config = function()
			require("satellite").setup()
		end,
	},
	{
		"kevinhwang91/nvim-bqf",
		dependencies = {
			{ "junegunn/fzf", build = "lua vim.fn['fzf#install']()" },
			{ "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
		},
		ft = "qf",
	},
})
