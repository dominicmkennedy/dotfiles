" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    "Plug 'sheerun/vim-polyglot'
    " File Explorer
    Plug 'scrooloose/NERDTree'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    
    "theme for nvim
    "Plug 'dracula/vim'
    "icons for nerdtree
    Plug 'ryanoasis/vim-devicons'
    "snippents engine
    "Plug 'SirVer/ultisnips'
    "extra snippets
    "Plug 'honza/vim-snippets'
    "for commenting out code
    Plug 'preservim/nerdcommenter'
    "nice start page
    Plug 'mhinz/vim-startify'
    "code completion engine
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    "git plug
    Plug 'tpope/vim-fugitive'

call plug#end()
