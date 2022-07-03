call plug#begin('~/.config/nvim/autoload/plugged')
	
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'preservim/nerdtree'
	Plug 'tpope/vim-fugitive'
	Plug 'numToStr/Comment.nvim'
	" Plug 'windwp/nvim-autopairs'
	" Plug 'frazrepo/vim-rainbow'
	" Plug 'aserowy/tmux.nvim'
	Plug 'lukas-reineke/indent-blankline.nvim'

	Plug 'nvim-lualine/lualine.nvim'
	Plug 'kyazdani42/nvim-web-devicons'

	" Plug 'glepnir/dashboard-nvim'
	Plug 'ThePrimeagen/vim-be-good'
	
	" colors
	Plug 'sainnhe/sonokai'
	Plug 'sainnhe/gruvbox-material'
	Plug 'sainnhe/edge'
	Plug 'folke/tokyonight.nvim'
	Plug 'bluz71/vim-nightfly-guicolors'

call plug#end()
