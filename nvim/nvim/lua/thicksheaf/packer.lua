-- This file can be loaded by calling `lua require('plugins')` from your init.vim

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.5',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

	use "rebelot/kanagawa.nvim"
	use ('nvim-treesitter/nvim-treesitter', {run= ':TSUpdate'})

	use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v3.x',
	  requires = {
	    --- Uncomment the two plugins below if you want to manage the language servers from neovim
	    -- {'williamboman/mason.nvim'},
	    -- {'williamboman/mason-lspconfig.nvim'},

	    -- LSP Support
	    {'neovim/nvim-lspconfig'},
	    -- Autocompletion
	    {'hrsh7th/nvim-cmp'},
	    {'hrsh7th/cmp-nvim-lsp'},
	    {'L3MON4D3/LuaSnip'},
	  }
	}

  use {
      'numToStr/Comment.nvim',
      config = function()
          require('Comment').setup()
      end
  }
  use "zhenyangze/vim-bitoai"

 use "nvim-tree/nvim-tree.lua"

  use {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    config = function()
      require("copilot").setup({})
    end,
  }

  use "nvim-lua/plenary.nvim"

  use {
    'CopilotC-Nvim/CopilotChat.nvim',
    branch = 'canary',
    requires = {
      'zbirenbaum/copilot.lua',  -- Dependency for CopilotCha
      'nvim-lua/plenary.nvim'    -- Dependency for various utilities
    },
    config = function()
      require("CopilotChat").setup({
        debug = true,  -- Enable debugging
        temperature = 0.3,
        window = {
          layout = 'horizontal'
        },
        mappings = {
          reset = {
            normal ='<C-r>',
            insert = '<C-r>'
          },
        }
      })
    end,
  }

  
end)



