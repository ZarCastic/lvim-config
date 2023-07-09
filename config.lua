--[[
lvim is the global options object

Linters should be
filled in as strings with either
a global executable or a path to
an executable
]]
-- THESE ARE EXAMPLE CONFIGS FEEL FREE TO CHANGE TO WHATEVER YOU WANT

-- general
lvim.log.level = "warn"
lvim.format_on_save.enabled = true
lvim.colorscheme = "catppuccin-mocha"
lvim.transparent_window = false
-- to disable icons and use a minimalist setup, uncomment the following
-- lvim.use_icons = false

-- keymappings [view all the defaults by pressing <leader>Lk]
lvim.leader = "space"
-- add your own keymapping
lvim.keys.normal_mode["<CR>"] = ":noh<cr>:w<cr>"
lvim.keys.normal_mode["<Esc>"] = ":noh<cr>"
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
lvim.keys.normal_mode["<leader><leader>"] = "<C-6>"

-- remove packer keybinding
lvim.builtin.which_key.mappings['p'] = {}
-- remove search keybinding
lvim.builtin.which_key.mappings['s'] = {}
lvim.builtin.which_key.mappings['f'] = {}

lvim.keys.normal_mode["<leader>y"] = '"+y'
lvim.keys.normal_mode["<leader>y"] = '"+y'
lvim.keys.normal_mode["<leader>p"] = '"+p'
lvim.keys.normal_mode["<leader>P"] = '"+P'
lvim.keys.visual_block_mode["<leader>y"] = '"+y'
lvim.keys.visual_block_mode["<leader>y"] = '"+y'
lvim.keys.visual_block_mode["<leader>p"] = '"+p'
lvim.keys.visual_block_mode["<leader>P"] = '"+P'
lvim.keys.visual_mode["<leader>y"] = '"+y'
lvim.keys.visual_mode["<leader>y"] = '"+y'
lvim.keys.visual_mode["<leader>p"] = '"+p'
lvim.keys.visual_mode["<leader>P"] = '"+P'

lvim.keys.normal_mode["<leader>sp"] = ":sp<cr>"
lvim.keys.normal_mode["<leader>vs"] = ":vs<cr>"

lvim.builtin.which_key.mappings["f"] = {
  name = "+Telescope",
  a = { "<cmd>Telescope marks initial_mode=insert<cr>", "Marks" },
  s = { "<cmd>Telescope grep_string initial_mode=insert<cr>", "String Under Coursor" },
  f = { "<cmd>Telescope find_files initial_mode=insert<cr>", "Files" },
  o = { "<cmd>Telescope oldfiles initial_mode=insert<cr>", "Recent" },
  b = { "<cmd>Telescope buffers initial_mode=insert<cr>", "Buffers" },
  g = { "<cmd>Telescope live_grep initial_mode=insert<cr>", "Grep" },
  p = { "<cmd>Telescope projects<cr>", "Projects" },
  t = { "<cmd>TodoTelescope<cr>", "Todos" }
}

-- zettelkasten
lvim.keys.normal_mode["<leader>z"] = "<cmd>Telekasten panel<CR>"

-- Most used functions
lvim.keys.normal_mode["<leader>zf"] = ":lua require('telekasten').find_notes()<CR>"
lvim.keys.normal_mode["<leader>zd"] = ":lua require('telekasten').find_daily_notes()<CR>"
lvim.keys.normal_mode["<leader>zg"] = ":lua require('telekasten').search_notes()<CR>"
lvim.keys.normal_mode["<leader>zz"] = ":lua require('telekasten').follow_link()<CR>"
lvim.keys.normal_mode["<leader>zT"] = ":lua require('telekasten').goto_today()<CR>"
lvim.keys.normal_mode["<leader>zW"] = ":lua require('telekasten').goto_thisweek()<CR>"
lvim.keys.normal_mode["<leader>zw"] = ":lua require('telekasten').find_weekly_notes()<CR>"
lvim.keys.normal_mode["<leader>zn"] = ":lua require('telekasten').new_note()<CR>"
lvim.keys.normal_mode["<leader>zN"] = ":lua require('telekasten').new_templated_note()<CR>"
lvim.keys.normal_mode["<leader>zy"] = ":lua require('telekasten').yank_notelink()<CR>"
lvim.keys.normal_mode["<leader>zc"] = ":lua require('telekasten').show_calendar()<CR>"
lvim.keys.normal_mode["<leader>zC"] = ":CalendarT<CR>"
lvim.keys.normal_mode["<leader>zi"] = ":lua require('telekasten').paste_img_and_link()<CR>"
lvim.keys.normal_mode["<leader>zt"] = ":lua require('telekasten').toggle_todo()<CR>"
lvim.keys.normal_mode["<leader>zb"] = ":lua require('telekasten').show_backlinks()<CR>"
lvim.keys.normal_mode["<leader>zF"] = ":lua require('telekasten').find_friends()<CR>"
lvim.keys.normal_mode["<leader>zI"] = ":lua require('telekasten').insert_img_link({ i=true })<CR>"
lvim.keys.normal_mode["<leader>zp"] = ":lua require('telekasten').preview_img()<CR>"
lvim.keys.normal_mode["<leader>zm"] = ":lua require('telekasten').browse_media()<CR>"
lvim.keys.normal_mode["<leader>za"] = ":lua require('telekasten').show_tags()<CR>"
lvim.keys.normal_mode["<leader>#"] = ":lua require('telekasten').show_tags()<CR>"
lvim.keys.normal_mode["<leader>zr"] = ":lua require('telekasten').rename_note()<CR>"
lvim.keys.normal_mode["<leader>zl"] = "<cmd>Telekasten insert_link<CR>"


-- lvim.keys.normal_mode["<S-l>"] = ":BufferLineCycleNext<CR>"
-- lvim.keys.normal_mode["<S-h>"] = ":BufferLineCyclePrev<CR>"
-- unmap a default keymapping
-- vim.keymap.del("n", "<C-Up>")
-- override a default keymapping
-- lvim.keys.normal_mode["<C-q>"] = ":q<cr>" -- or vim.keymap.set("n", "<C-q>", ":q<cr>" )

-- Change Telescope navigation to use j and k for navigation and n and p for history in both input and normal mode.
-- we use protected-mode (pcall) just in case the plugin wasn't loaded yet.
-- local _, actions = pcall(require, "telescope.actions")
-- lvim.builtin.telescope.defaults.mappings = {
--   -- for input mode
--   i = {
--     ["<C-j>"] = actions.move_selection_next,
--     ["<C-k>"] = actions.move_selection_previous,
--     ["<C-n>"] = actions.cycle_history_next,
--     ["<C-p>"] = actions.cycle_history_prev,
--   },
--   -- for normal mode
--   n = {
--     ["<C-j>"] = actions.move_selection_next,
--     ["<C-k>"] = actions.move_selection_previous,
--   },
-- }

-- Change theme settings
-- lvim.builtin.theme.options.dim_inactive = true
-- lvim.builtin.theme.options.style = "storm"

-- Use which-key to add extra bindings with the leader-key prefix
-- lvim.builtin.which_key.mappings["P"] = { "<cmd>Telescope projects<CR>", "Projects" }
lvim.builtin.which_key.mappings["t"] = {
  name = "+Trouble",
  r = { "<cmd>Trouble lsp_references<cr>", "References" },
  f = { "<cmd>Trouble lsp_definitions<cr>", "Definitions" },
  d = { "<cmd>Trouble document_diagnostics<cr>", "Diagnostics" },
  q = { "<cmd>Trouble quickfix<cr>", "QuickFix" },
  l = { "<cmd>Trouble loclist<cr>", "LocationList" },
  w = { "<cmd>Trouble workspace_diagnostics<cr>", "Workspace Diagnostics" },
  t = { "<cmd>TroubleToggle<cr>", "Toggle Trouble" },
  a = { "<cmd>TodoTrouble<cr>", "Todo" },
}

-- TODO: User Config for predefined plugins
-- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.setup.renderer.icons.show.git = false

-- if you don't want all the parsers change this to a table of the ones you want
lvim.builtin.treesitter.ensure_installed = {
  "bash",
  "c",
  "cpp",
  "javascript",
  "json",
  "lua",
  "python",
  "typescript",
  "tsx",
  "css",
  "rust",
  "java",
  "yaml",
}

lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enable = true

-- generic LSP settings

-- -- make sure server will always be installed even if the server is in skipped_servers list
-- lvim.lsp.installer.setup.ensure_installed = {
--     "sumneko_lua",
--     "jsonls",
-- }
-- -- change UI setting of `LspInstallInfo`
-- -- see <https://github.com/williamboman/nvim-lsp-installer#default-configuration>
-- lvim.lsp.installer.setup.ui.check_outdated_servers_on_open = false
-- lvim.lsp.installer.setup.ui.border = "rounded"
-- lvim.lsp.installer.setup.ui.keymaps = {
--     uninstall_server = "d",
--     toggle_server_expand = "o",
-- }

-- ---@usage disable automatic installation of servers
-- lvim.lsp.installer.setup.automatic_installation = false

-- ---configure a server manually. !!Requires `:LvimCacheReset` to take effect!!
-- ---see the full default list `:lua print(vim.inspect(lvim.lsp.automatic_configuration.skipped_servers))`
-- vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "pyright" })
-- local opts = {} -- check the lspconfig documentation for a list of all possible options
-- require("lvim.lsp.manager").setup("pyright", opts)

-- ---remove a server from the skipped list, e.g. eslint, or emmet_ls. !!Requires `:LvimCacheReset` to take effect!!
-- ---`:LvimInfo` lists which server(s) are skipped for the current filetype
-- lvim.lsp.automatic_configuration.skipped_servers = vim.tbl_filter(function(server)
--   return server ~= "emmet_ls"
-- end, lvim.lsp.automatic_configuration.skipped_servers)

-- -- you can set a custom on_attach function that will be used for all the language servers
-- -- See <https://github.com/neovim/nvim-lspconfig#keybindings-and-completion>
-- lvim.lsp.on_attach_callback = function(client, bufnr)
--   local function buf_set_option(...)
--     vim.api.nvim_buf_set_option(bufnr, ...)
--   end
--   --Enable completion triggered by <c-x><c-o>
--   buf_set_option("omnifunc", "v:lua.vim.lsp.omnifunc")
-- end

-- -- set a formatter, this will override the language server formatting capabilities (if it exists)
local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
  { command = "black", filetypes = { "python" } },
  { command = "isort", filetypes = { "python" } },
  {
    -- each formatter accepts a list of options identical to https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md#Configuration
    command = "prettier",
    ---@usage arguments to pass to the formatter
    -- these cannot contain whitespaces, options such as `--line-width 80` become either `{'--line-width', '80'}` or `{'--line-width=80'}`
    extra_args = { "--print-with", "100" },
    ---@usage specify which filetypes to enable. By default a providers will attach to all the filetypes it supports.
    filetypes = { "typescript", "typescriptreact", "vue" },
  },
}

-- -- set additional linters
-- local linters = require "lvim.lsp.null-ls.linters"
-- linters.setup {
--   { command = "flake8", filetypes = { "python" } },
--   {
--     -- each linter accepts a list of options identical to https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md#Configuration
--     command = "shellcheck",
--     ---@usage arguments to pass to the formatter
--     -- these cannot contain whitespaces, options such as `--line-width 80` become either `{'--line-width', '80'}` or `{'--line-width=80'}`
--     extra_args = { "--severity", "warning" },
--   },
--   {
--     command = "codespell",
--     ---@usage specify which filetypes to enable. By default a providers will attach to all the filetypes it supports.
--     filetypes = { "javascript", "python" },
--   },
-- }

-- Additional Plugins
lvim.plugins = {
  {
    "folke/trouble.nvim",
    cmd = "TroubleToggle",
  },
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
  },
  { "tpope/vim-surround" },
  {
    "MunifTanjim/exrc.nvim",
    dependencies = { { "MunifTanjim/nui.nvim" } },
    config = function()
      require("exrc").setup({
        files = {
          ".nvimrc.lua",
          ".nvimrc",
          ".exrc.lua",
          ".exrc",
        },
      })
    end
  },
  { "lspcontainers/lspcontainers.nvim" },
  {
    "iamcco/markdown-preview.nvim",
    build = "cd app && npm install",
    ft = "markdown",
    config = function()
      vim.g.mkdp_auto_start = 1
    end,
  },
  {
    "radenling/vim-dispatch-neovim",
    dependencies = { { "tpope/vim-dispatch" } }
  },
  { "catppuccin/nvim",       name = "catppuccin" },
  { "EdenEast/nightfox.nvim" },
  {
    'saecki/crates.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    version = "v0.3.0",
    config = function()
      require('crates').setup()
    end,
  },
  {
    'renerocksai/telekasten.nvim',
    dependencies = { 'nvim-telescope/telescope.nvim', 'renerocksai/calendar-vim' },
    config = function()
      require('telekasten').setup({
        home = vim.fn.expand('~/zettelkasten'),
        template_new_daily = vim.fn.expand("~/zettelkasten/templates/daily.md"),
        template_new_weekly = vim.fn.expand("~/zettelkasten/templates/weekly.md")
      })
    end,
  }
}

-- Autocommands (https://neovim.io/doc/user/autocmd.html)
-- vim.api.nvim_create_autocmd("BufEnter", {
--   pattern = { "*.json", "*.jsonc" },
--   -- enable wrap mode for json files only
--   command = "setlocal wrap",
-- })
-- vim.api.nvim_create_autocmd("FileType", {
--   pattern = "zsh",
--   callback = function()
--     -- let treesitter use bash highlight for zsh files as well
--     require("nvim-treesitter.highlight").attach(0, "bash")
--   end,
-- })


vim.o.number = true
vim.o.relativenumber = true
vim.o.wrap = true
vim.o.clipboard = ""
lvim.builtin.nvimtree.setup.update_cwd = false
vim.o.foldcolumn = '1'
vim.o.foldlevel = 99
vim.o.foldlevelstart = 99
vim.o.foldenable = true

lvim.builtin.project.patterns = { ">Projects", ".git" }

lvim.keys.insert_mode["<A-j>"] = false
lvim.keys.insert_mode["<A-k>"] = false
lvim.keys.normal_mode["<A-j>"] = false
lvim.keys.normal_mode["<A-k>"] = false
lvim.keys.visual_block_mode["<A-j>"] = false
lvim.keys.visual_block_mode["<A-k>"] = false
lvim.keys.visual_block_mode["J"] = false


-- lsp stuff
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.foldingRange = {
  dynamicRegistration = false,
  lineFoldingOnly = true
}
local language_servers = require("lspconfig").util.available_servers() -- or list servers manually like {'gopls', 'clangd'}
for _, ls in ipairs(language_servers) do
  require('lspconfig')[ls].setup({
    capabilities = capabilities
    -- you can add other fields for setting up lsp server in this table
  })
end

local dap = require('dap')
dap.adapters.go = {
  type = 'executable',
  command = 'node',
  args = { os.getenv('HOME') .. '/bin/vscode-go/dist/debugAdapter.js' },
}
dap.adapters.lldb = {
  type = 'executable',
  command = '/home/tobi/.local/share/nvim/mason/packages/codelldb/extension/adapter/codelldb', -- adjust as needed, must be absolute path
  name = 'lldb'
}

dap.configurations.go = {
  {
    type = 'go',
    name = 'Debug',
    request = 'launch',
    showLog = false,
    program = "${file}",
    dlvToolPath = '/usr/bin/dlv' -- Adjust to where delve is installed
  },
}
