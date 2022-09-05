

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.smartcase = true
vim.opt.undofile = true

vim.api.nvim_exec(
[[
set number
set relativenumber
set so=999
set mouse=a
set clipboard=unnamed
let mapleader = " "

let g:registers_window_border = "rounded"
let g:registers_show_empty_registers = 0
let g:registers_show = "\"+-/_=#%.0123456789abcdefghijklmnopqrstuvwxyz:"
let g:registers_hide_only_whitespace = 1
let g:neomux_dont_fix_term_ctrlw_map = 1
let g:coq_settings = { 'display.pum.fast_close': v:false }

nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>
tnoremap <Esc> <C-\><C-n>

command! W  write
autocmd BufWritePre *.go :silent! lua require('go.format').goimport() * :%s/\s\+$//e
autocmd BufWritePre * :%s/\s\+$//e

call plug#begin()
Plug 'ncm2/ncm2'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'brooth/far.vim'
Plug 'williamboman/mason.nvim'
Plug 'junegunn/fzf'
Plug 'romgrk/barbar.nvim'
Plug 'tversteeg/registers.nvim', { 'branch': 'main' }
Plug 'folke/which-key.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'mfussenegger/nvim-dap',
Plug 'rcarriga/nvim-dap-ui',
Plug 'theHamsta/nvim-dap-virtual-text',
Plug 'neovim/nvim-lspconfig',
Plug 'nvim-lualine/lualine.nvim'
Plug 'kkharji/sqlite.lua', { 'module': 'sqlite'}
"
" Coq
Plug 'ms-jpq/coq_nvim', {'branch': 'coq', 'do': 'python3 -m coq deps' }
Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'}
Plug 'ms-jpq/coq.thirdparty', {'branch': '3p'}
" markdown
Plug 'ellisonleao/glow.nvim'
"
Plug 'chentoast/marks.nvim'


Plug 'nikvdp/neomux'
Plug 'AckslD/nvim-neoclip.lua'
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }

call plug#end()

]], true)

require("barbar")
require("keymaps")
require("marks").setup()
require("barbar")
require("keymaps")
require("marks").setup()
require('glow').setup({
  style = "dark",
  width = 120,
})
require("mason").setup()
require('lualine').setup({
  options = { theme = 'codedark' },
})

require("nvim-tree").setup({
    sort_by = "case_sensitive",
          view = {
            adaptive_size = true,
            mappings = {
              list = {
                { key = "u", action = "dir_up" },
              },
            },
    },
    renderer = {
            group_empty = true,
    },
    filters = {
            dotfiles = true,
    },
})

require('neoclip').setup({
      enable_persistent_history = true,
})

require("telescope").load_extension("neoclip")


-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
  -- Enable completion triggered by <c-x><c-o>
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  -- See `:help vim.lsp.*` for documentation on any of the below functions
  vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
  vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
  vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, bufopts)
  vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
  vim.keymap.set('n', '<space>wl', function()
    print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
  end, bufopts)
end

-- coq vim
require("coq_3p") {{ src = "nvimlua", short_name = "nLUA" }}


local on_attach = function(client, bufnr)
  -- Enable completion triggered by <c-x><c-o>
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  -- See `:help vim.lsp.*` for documentation on any of the below functions
  local bufopts = { noremap=true, silent=true, buffer=bufnr }
  vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
  vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
  vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, bufopts)
  vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
  vim.keymap.set('n', '<space>wl', function()
    print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
  end, bufopts)
  vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, bufopts)
  vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, bufopts)
  vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, bufopts)
  vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
  vim.keymap.set('n', '<space>f', vim.lsp.buf.formatting, bufopts)
end

local lspconfig = require('lspconfig')
vim.g.coq_settings = { auto_start = 'shut-up' }
local servers = { 'pyright', 'gopls' }
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup(require('coq').lsp_ensure_capabilities({
  on_attach = on_attach,
  }))
end





