" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')
  " Syntax
  Plug 'sheerun/vim-polyglot'

  " Picker Color
  Plug 'KabbAmine/vCoolor.vim'

  " Theme
  Plug 'morhetz/gruvbox'

  " Status bar
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'

  " Typing
  Plug 'jiangmiao/auto-pairs'
  Plug 'alvan/vim-closetag'
  Plug 'tpope/vim-surround'

  " Autocomplete
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'honza/vim-snippets'

  " Tmux
  Plug 'benmills/vimux'
  Plug 'christoomey/vim-tmux-navigator'

  " IDE
  Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'terryma/vim-multiple-cursors'
  Plug 'easymotion/vim-easymotion'
  Plug 'yggdroot/indentline'
  Plug 'tpope/vim-commentary'
  Plug 'AndrewRadev/tagalong.vim'
  Plug 'norcalli/nvim-colorizer.lua'
  Plug 'shmargum/vim-sass-colors'
  Plug 'junegunn/rainbow_parentheses.vim'

  " Lint Engine
  Plug 'dense-analysis/ale'

  " Git
  Plug 'mhinz/vim-signify'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-rhubarb'
  Plug 'junegunn/gv.vim'

  " Task
  Plug 'skywind3000/asynctasks.vim'
  Plug 'skywind3000/asyncrun.vim'

  " Extra
  Plug 'airblade/vim-rooter'
  Plug 'tpope/vim-repeat'
  Plug 'ryanoasis/vim-devicons'
  Plug 'unblevable/quick-scope'
  Plug 'liuchengxu/vim-which-key'
  Plug 'voldikss/vim-floaterm'
  Plug 'KabbAmine/zeavim.vim'
  Plug 'junegunn/goyo.vim'
  Plug 'https://github.com/shmargum/vim-sass-colors.git'
  " REQUIERE RUBY

  " Markdown
  Plug 'godlygeek/tabular'
  Plug 'plasticboy/vim-markdown'
  Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }

call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
