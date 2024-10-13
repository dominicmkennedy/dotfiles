vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  use({
    'nvim-telescope/telescope.nvim',
    tag = '0.1.1',
    requires = { { 'nvim-lua/plenary.nvim' } }
  })

  use('folke/tokyonight.nvim')

  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  use('tpope/vim-fugitive')
  use('farmergreg/vim-lastplace')
  use('lukas-reineke/indent-blankline.nvim')
  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    requires = {
      -- LSP Support
      { 'neovim/nvim-lspconfig' }, -- Required
      {
        -- Optional
        'williamboman/mason.nvim',
        run = function()
          pcall(vim.cmd, 'MasonUpdate')
        end,
      },
      { 'williamboman/mason-lspconfig.nvim' }, -- Optional

      -- Autocompletion
      { 'hrsh7th/nvim-cmp' },     -- Required
      { 'hrsh7th/cmp-nvim-lsp' }, -- Required
      { 'L3MON4D3/LuaSnip' },     -- Required
    }
  }

  use {
    'windwp/nvim-autopairs',
    config = function() require('nvim-autopairs').setup {} end
  }

  use {
    'weilbith/nvim-code-action-menu',
    cmd = 'CodeActionMenu'
  }

  use {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end
  }

  use { 'ryanoasis/vim-devicons' }
  use { 'nvim-tree/nvim-web-devicons' }
  use { 'nvim-lualine/lualine.nvim' }
  use { 'BeneCollyridam/futhark-vim' }
  use 'prichrd/netrw.nvim'
  use 'prettier/vim-prettier'
  use 'averms/black-nvim'
  use 'vlime/vlime'
  use 'prettier/vim-prettier'
  use { 'akinsho/git-conflict.nvim', tag = "*", config = function()
    require('git-conflict').setup()
  end }
end)
