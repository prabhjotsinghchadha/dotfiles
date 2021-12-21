if has("nvim")
  let g:plug_home = stdpath('data') . '/plugged'
endif

call plug#begin()

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'

if has("nvim")
  Plug 'hoob3rt/lualine.nvim'
  Plug 'kristijanhusak/defx-git'
  Plug 'kristijanhusak/defx-icons'
  Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
  Plug 'neovim/nvim-lspconfig'
  Plug 'tami5/lspsaga.nvim'
  Plug 'folke/lsp-colors.nvim'
  Plug 'L3MON4D3/LuaSnip'
  Plug 'hrsh7th/cmp-nvim-lsp'
  Plug 'hrsh7th/cmp-buffer'
  Plug 'hrsh7th/nvim-cmp'
  Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
  Plug 'kyazdani42/nvim-web-devicons'
  Plug 'onsails/lspkind-nvim'
  Plug 'nvim-lua/popup.nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'windwp/nvim-autopairs'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'sudormrfbin/cheatsheet.nvim'
  Plug 'williamboman/nvim-lsp-installer'
endif
Plug 'autozimu/LanguageClient-neovim', {'branch': 'next', 'do': 'bash install.sh ',}
let g:LanguageClient_rootMarkers = {'javascript': ['.flowconfig', 'package.json']}
let g:LanguageClient_serverCommands={'javascript': ['flow', 'lsp'],   'javascript.jsx': ['flow', 'lsp']}

Plug 'w0rp/ale'
Plug 'preservim/nerdtree'
Plug 'jremmen/vim-ripgrep'
Plug 'embark-theme/vim', { 'as': 'embark', 'branch': 'main' }
Plug 'vim-utils/vim-man'
Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production', 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'yaml', 'html'] }
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'AndrewRadev/tagalong.vim'
Plug 'townk/vim-autoclose'
Plug 'luochen1990/rainbow'
Plug 'SirVer/ultisnips'
Plug 'epilande/vim-react-snippets'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-surround'
Plug 'machakann/vim-sandwich'

Plug 'chemzqm/vim-jsx-improve'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'jparise/vim-graphql'

call plug#end()

