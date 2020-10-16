" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Comments
    Plug 'tpope/vim-commentary'
    " Repeat stuff
    Plug 'tpope/vim-repeat'
    " Text Navigation
    Plug 'unblevable/quick-scope'
    " Golang support
    Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

  if exists('g:vscode')
    Plug 'machakann/vim-highlightedyank'
  else

    " Surround
    Plug 'tpope/vim-surround'
    " Files
    Plug 'tpope/vim-eunuch'
    " Have the file system follow you around
    Plug 'airblade/vim-rooter'
    " auto set indent settings
    Plug 'tpope/vim-sleuth'
    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " Cool Icons
    Plug 'ryanoasis/vim-devicons'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " Closetags
    Plug 'alvan/vim-closetag'
    " Theme
    Plug 'joshdick/onedark.vim'
    Plug 'christianchiarulli/nvcode.vim'
    " Intellisense
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " Status Line
    Plug 'vim-airline/vim-airline'
    " FZF
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    " Git
    Plug 'airblade/vim-gitgutter'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-rhubarb'
    " Terminal
    Plug 'voldikss/vim-floaterm'
    " Vista
    Plug 'liuchengxu/vista.vim'
    " See what keys do like in emacs
    Plug 'liuchengxu/vim-which-key'
    " Snippets
    Plug 'honza/vim-snippets'
    Plug 'mattn/emmet-vim'
    " Better tabline
    Plug 'mg979/vim-xtabline'
    " async tasks
    Plug 'skywind3000/asynctasks.vim'
    Plug 'skywind3000/asyncrun.vim'
    " Colorizer
    Plug 'norcalli/nvim-colorizer.lua'
    " Better Whitespace
    Plug 'ntpeters/vim-better-whitespace'
    Plug 'moll/vim-bbye'
  endif

call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
