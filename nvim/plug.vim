if has("nvim")
  let g:plug_home = stdpath('data') . '/plugged'
  let g:neoformat_try_node_exe = 1
  let g:neoformat_try_formatprg = 1
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
  Plug 'sudormrfbin/cheatsheet.nvim'
  Plug 'b0o/SchemaStore.nvim'
  Plug 'sbdchd/neoformat' 
endif

" Plug 'w0rp/ale'
" Plug 'preservim/nerdtree'
Plug 'jremmen/vim-ripgrep'
Plug 'ayu-theme/ayu-vim'
Plug 'embark-theme/vim', { 'as': 'embark', 'branch': 'main' }
Plug 'vim-utils/vim-man'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'AndrewRadev/tagalong.vim'
Plug 'townk/vim-autoclose'
Plug 'luochen1990/rainbow'
Plug 'SirVer/ultisnips'
Plug 'tpope/vim-surround'
Plug 'machakann/vim-sandwich'
Plug 'honza/vim-snippets'
Plug 'chrisbra/Colorizer'
Plug 'fladson/vim-kitty'
Plug 'morhetz/gruvbox'
Plug 'ThePrimeagen/vim-be-good'
Plug 'rust-lang/rust.vim'
Plug 'ryanoasis/vim-devicons'
call plug#end()

