-- This file can be loaded by calling `lua require('plugins')` from your init.vim

return require('packer').startup(function(use)
  	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	-- Colorscheme
	use 'gruvbox-community/gruvbox'
	use 'arcticicestudio/nord-vim'
	use 'joshdick/onedark.vim'
	use { "catppuccin/nvim", as = "catppuccin" }

	-- Syntax
	use 'jiangmiao/auto-pairs'
	use 'junegunn/goyo.vim'
	use 'sheerun/vim-polyglot'
		
	-- Status Line
	use 'nvim-lualine/lualine.nvim'
	use 'kyazdani42/nvim-web-devicons'
end)