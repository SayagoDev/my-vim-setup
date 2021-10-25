
"{{{ Configuracíon Básica
syntax on                           " Enables syntax highlighing
let mapleader=" "
set fdm=marker
set foldenable
set title
set hidden                              " Required to keep multiple buffers open multiple buffers
set nowrap                              " Display long lines as just one line
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set expandtab                           " Converts tabs to spaces
set smartindent                         " Makes indenting smart
set autoindent                          " Good auto indent
set number                              " Line numbers
set nowritebackup                       " This is recommended by coc
set background=dark                     " tell vim what the background color looks like
set updatetime=300                      " Faster completion
set timeoutlen=500                      " By default timeoutlen is 1000 ms
set t_Co=256                            " Support 256 colors
set conceallevel=0                      " So that I can see `` in markdown files
set tabstop=4                           " Insert 4 spaces for a tab
set shiftwidth=4                        " Change the number of space characters inserted for indentation
set formatoptions-=cro                  " Stop newline continution of comments
set clipboard=unnamedplus               " Copy paste between vim and everything else
set encoding=utf-8                      " The encoding displayed
set pumheight=10                        " Makes popup menu smaller
set fileencoding=utf-8                  " The encoding written to file
set cmdheight=1                         " More space for displaying messages
set iskeyword+=-                      	" treat dash separated words as a word text object"
set mouse=a                             " Enable your mouse
set laststatus=0                        " Always display the status line
set noshowmode                          " We don't need to see things like -- INSERT -- anymore
set nobackup                            " This is recommended by coc
set noruler
set noshowcmd
set termguicolors
set relativenumber
let $NVIM_TUI_ENABLE_TRUE_COLOR=1       " Fix error quickscope
let g:loaded_airline = 1
"}}}

"{{{ Configuración de Plugins
" ╔═══════════════════════════════════╗
" ║             Airline               ║
" ╚═══════════════════════════════════╝
" Enable tabline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#right_alt_sep = ''
let g:airline#extensions#tabline#fnamemod = ':t'

" Enable powerline fonts
let g:airline_powerline_fonts = 1

" Switch to your current theme
let g:airline_theme = 'distinguished'

" ╔═══════════════════════════════════╗
" ║             UltiSnips             ║
" ╚═══════════════════════════════════╝
let g:UltiSnipsSnippetDirectories=[$HOME.'/.config/nvim/UltiSnips']
let g:UltiSnipsExpandTrigger="<c-a>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" ╔═══════════════════════════════════╗
" ║          rnvimr/ranger            ║
" ╚═══════════════════════════════════╝
" let g:rnvimr_ex_enable = 1
" let g:rnvimr_pick_enable = 1
" " Make Neovim to wipe the buffers corresponding
" " to the files deleted by Ranger
" let g:rnvimr_bw_enable = 1

" ╔═══════════════════════════════════╗
" ║            identLine              ║
" ╚═══════════════════════════════════╝
"
" let g:indentLine_char_list = ['|', '¦', '┆', '┊']
let g:indentLine_char_list = ['|']
let g:indentLine_bufTypeExclude = ['help', 'terminal', 'nofile', 'text', 'markdown', 'txt']

" ╔═══════════════════════════════════╗
" ║       rainbow_parentheses         ║
" ╚═══════════════════════════════════╝
let g:rainbow#max_level = 16
let g:rainbow#pairs = [['(', ')'], ['[', ']'], ['{', '}']]

autocmd FileType * RainbowParentheses

" ╔═══════════════════════════════════╗
" ║               Git                 ║
" ╚═══════════════════════════════════╝
" Change these if you want
let g:signify_sign_add               = '+'
let g:signify_sign_delete            = '_'
let g:signify_sign_delete_first_line = '‾'
let g:signify_sign_change            = '~'

" I find the numbers disctracting
let g:signify_sign_show_count = 0
let g:signify_sign_show_text = 1

" ╔═══════════════════════════════════╗
" ║            QuickScope             ║
" ╚═══════════════════════════════════╝
" Trigger a highlight in the appropriate direction when pressing these keys: 
" let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']
let g:qs_enable=0
let g:qs_buftype_blacklist = ['terminal', 'nofile']

augroup qs_colors
  autocmd!
  autocmd ColorScheme * highlight QuickScopePrimary guifg='#FFD700' gui=underline ctermfg=155 cterm=underline
  autocmd ColorScheme * highlight QuickScopeSecondary guifg='#00CED1' gui=underline ctermfg=81 cterm=underline
augroup END

let g:qs_max_chars=150

" ╔═══════════════════════════════════╗
" ║             Snippets              ║
" ╚═══════════════════════════════════╝
" Use <C-l> for trigger snippet expand.
imap <C-l> <Plug>(coc-snippets-expand)

" Use <C-j> for select text for visual placeholder of snippet.
vmap <C-j> <Plug>(coc-snippets-select)

" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<c-j>'

" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-k>'

" Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-j> <Plug>(coc-snippets-expand-jump)

" ╔═══════════════════════════════════╗
" ║             Floaterm              ║
" ╚═══════════════════════════════════╝

let g:floaterm_keymap_toggle = '<F1>'
let g:floaterm_keymap_next   = '<F2>'
let g:floaterm_keymap_prev   = '<F3>'
let g:floaterm_keymap_new    = '<F4>'

" Floaterm
let g:floaterm_gitcommit='floaterm'
let g:floaterm_autoinsert=1
let g:floaterm_width=0.8
let g:floaterm_height=0.8
let g:floaterm_wintitle=0
let g:floaterm_autoclose=1

" ╔═══════════════════════════════════╗
" ║            Asynctask              ║
" ╚═══════════════════════════════════╝
let g:asyncrun_open = 6
let g:asynctasks_term_pos = 'bottom'
let g:asynctasks_extra_config = ['~/.config/nvim/utils/tasks.ini']
let g:asyncrun_rootmarks = [ '.root', '.project' ]
" let current_tasks = asynctasks#list("")

function! s:fzf_sink(what)
	let p1 = stridx(a:what, '<')
	if p1 >= 0
		let name = strpart(a:what, 0, p1)
		let name = substitute(name, '^\s*\(.\{-}\)\s*$', '\1', '')
		if name != ''
			exec "AsyncTask ". fnameescape(name)
		endif
	endif
endfunction

function! s:fzf_task()
	let rows = asynctasks#source(&columns * 48 / 100)
	let source = []
	for row in rows
		let name = row[0]
		let source += [name . '  ' . row[1] . '  : ' . row[2]]
	endfor
	let opts = { 'source': source, 'sink': function('s:fzf_sink'),
				\ 'options': '+m --nth 1 --inline-info --tac' }
	if exists('g:fzf_layout')
		for key in keys(g:fzf_layout)
			let opts[key] = deepcopy(g:fzf_layout[key])
		endfor
	endif
	call fzf#run(opts)
endfunction

command! -nargs=0 AsyncTaskFzf call s:fzf_task()

" ╔═══════════════════════════════════╗
" ║              Vimux                ║
" ╚═══════════════════════════════════╝
let g:VimuxPromptString = "Hi --> "

" ╔═══════════════════════════════════╗
" ║             Polyglot              ║
" ╚═══════════════════════════════════╝
let g:polyglot_disabled = ['markdown']

" ╔═══════════════════════════════════╗
" ║             Markdown              ║
" ╚═══════════════════════════════════╝
" disable header folding
let g:vim_markdown_folding_disabled = 1

" do not use conceal feature, the implementation is not so good
let g:vim_markdown_conceal = 0

" disable conceal for code fences
let g:vim_markdown_conceal_code_blocks = 0

" disable math tex conceal feature
let g:tex_conceal = ""
let g:vim_markdown_math = 1

" support front matter of various format
let g:vim_markdown_frontmatter = 1  " for YAML format
let g:vim_markdown_toml_frontmatter = 1  " for TOML format
let g:vim_markdown_json_frontmatter = 1  " for JSON format

" ╔═══════════════════════════════════╗
" ║          MarkdownPreview          ║
" ╚═══════════════════════════════════╝
let g:mkdp_auto_close = 0

" ╔═══════════════════════════════════╗
" ║            AutoPairs	          ║
" ╚═══════════════════════════════════╝
" let g:AutoPairs = {'"':'"'}

" ╔═══════════════════════════════════╗
" ║               ALE		          ║
" ╚═══════════════════════════════════╝
let g:ale_linters_explicit = 1
let g:ale_fix_on_save = 1

let g:ale_fixers = {
\   'javascript': ['prettier', 'eslint'],
\   'css': ['prettier'],
\   'scss': ['prettier'],
\	'html': ['prettier'],
\   'python': ['autopep8'],
\}

let g:ale_linters = {
\   'javascript': ['eslint'],
\   'python': ['flake8'],
\}
"}}}

"{{{ Cargando archivos externos
so ~/.config/nvim/vim-plug/plugins.vim
luafile ~/.config/nvim/lua/plug-colorizer.lua
"}}}

"{{{ Gruvbox configuration
colorscheme gruvbox
let g:gruvbox_contrast_dark = "soft"
highlight Normal ctermbg=NONE
"}}}

"{{{ Funcionalidades
" Transparent background
autocmd vimenter * hi Normal guibg=NONE ctermbg=NONE

" Disables automatic commenting on newline:
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
"}}}

"{{{ Funciones 
" Function for toggling the bottom statusbar:
let s:hidden_all = 0
function! ToggleHiddenAll()
    if s:hidden_all  == 0
        set noshowmode
        set noruler
        set laststatus=0
        set noshowcmd
    else
        let s:hidden_all = 0
        set showmode
        set ruler
        set laststatus=2
        set showcmd
    endif
endfunction

fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

fun! SplitRight()
    exe "normal \<C-W>v"
endfun
"}}}

"{{{ Mapeo de teclas
" Alternative Esc
inoremap jk <Esc>
vnoremap a <Esc>

" Use ctrl + arrows to resize windows
nnoremap <silent> <C-Up>    :resize -2<CR>
nnoremap <silent> <C-Down>  :resize +2<CR>
nnoremap <silent> <C-Left>  :vertical resize -2<CR>
nnoremap <silent> <C-Right> :vertical resize +2<CR>

" TAB in general mode will move to text buffer
nnoremap <silent> <TAB> :bnext<CR>

" SHIFT-TAB will go back
nnoremap <silent> <S-TAB> :bprevious<CR>

" <TAB>: completion.
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

xnoremap K :move '<-2<CR>gv-gv
xnoremap J :move '>+1<CR>gv-gv

" Better tabbing
vnoremap < <gv
vnoremap > >gv

" Better window navigation
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-h> <C-w>h

nnoremap <M-j> <C-W>J
nnoremap <M-k> <C-W>K
nnoremap <M-l> <C-W>L
nnoremap <M-h> <C-W>H

" Search
nnoremap ,s /
nnoremap ,,s :noh<CR>

" Envolver con comillas
nnoremap ," :normal ysiw"<CR>
" Envolver con comillas todas las letras juntas
nnoremap ,c :normal ysW"<CR>

" Envolver con paréntesis todas las letras juntas ( hello, world! )
nnoremap ,p :normal ysW(<CR>
nnoremap ,P :normal ysW)<CR>

" Envolver con paréntesis todas las palabras ignorando los espacios en blanco
nnoremap ,,p :normal yss(<CR>
nnoremap ,,P :normal yss)<CR>

" Envolver con comillas todas las palabras ignorando los espacios
nnoremap ,C :normal yss"<CR>

" Eliminar comillas
nnoremap ,dc :normal ds"<CR>

" Eliminar paréntesis
nnoremap ,dp :normal ds)<CR>  

" Sustituir 'cs[character][character]'

" Moverse más rápido
" nnoremap <silent> <A-k> :normal 4k<CR>
" nnoremap <silent> <A-j> :normal 4j<CR>

" Marcas
nnoremap ,m :normal `

" Increment
nnoremap > yyp<C-a>

" Decremented
nnoremap < yyp<C-x>

" LaTeX Preview
map <leader><leader>p :!latexmk -pdf -pvc % > /dev/null 2>&1 &<CR><CR>

" LaTeX Compilation
map <leader><leader>c :!pdflatex %<CR><CR>

" Add new lines
nnoremap <silent> <leader>o :<C-u>call append(line("."),   repeat([""], v:count1))<CR>
nnoremap <silent> <leader>O :<C-u>call append(line(".")-1, repeat([""], v:count1))<CR>

" 
" nnoremap Y y$

" Keeping it centered
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap J mzJ`z

" Undo break points
inoremap , ,<c-g>u
inoremap . .<c-g>u
inoremap ! !<c-g>u
inoremap ? ?<c-g>u

" ╔═══════════════════════════════════╗
" ║               COC                 ║
" ╚═══════════════════════════════════╝
" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Make <CR> auto-select the first completion item
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
"}}}

"{{{ Whick Key
" Map leader to which_key
nnoremap <silent> <leader> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>

" Create map to add keys to
let g:which_key_map =  {}
" Define a separator
let g:which_key_sep = '→'
" set timeoutlen=100


" Not a fan of floating windows for this
let g:which_key_use_floating_win = 0

" Change the colors if you want
highlight default link WhichKey          Operator
highlight default link WhichKeySeperator DiffAdded
highlight default link WhichKeyGroup     Identifier
highlight default link WhichKeyDesc      Function

" Hide status line
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler noshowcmd
  \| autocmd BufLeave <buffer> set laststatus=0 noshowmode noruler noshowcmd

" {{{ Mapeos más utilizados
let g:which_key_map['w'] = [ ':w'                         , 'save']
let g:which_key_map['W'] = [ ':w | call TrimWhitespace()' , 'save clear']
let g:which_key_map['q'] = [ ':q!'                        , 'close']
let g:which_key_map['r'] = [ ':source %'                  , 'reload']
let g:which_key_map['o'] = [ ':RnvimrToggle'              , 'open' ]
let g:which_key_map['v'] = [ ':call SplitRight() | exe "normal \<c-h>" | bprevious'                     , 'split right']
let g:which_key_map['h'] = [ '<C-W>s'                     , 'split below']
let g:which_key_map['='] = [ '<C-W>='                     , 'balance windows' ]
let g:which_key_map['f'] = [ ':Files'                     , 'search files' ]
let g:which_key_map['T'] = [ ':Rg'                        , 'search text' ]
let g:which_key_map['e'] = [ ':CocCommand explorer'       , 'explorer' ]
let g:which_key_map['O'] = [ '<Plug>(QuickScopeToggle)'   , 'quickscope']
let g:which_key_map['M'] = [ ':setlocal spell! spelllang=es_mx'   , 'spell es']
let g:which_key_map['S'] = [ ':setlocal spell! spelllang=en_us'   , 'spell en']
"}}}

" {{{ a is for actions
let g:which_key_map.a = {
      \ 'name' : '+actions' ,
      \ 'h' : [':let @/ = ""'            , 'remove search highlight'],
      \ 'H' : [':call ToggleHiddenAll()' , 'toggle hidden'],
      \ 'm' : [':MarkdownPreview'        , 'markdown preview'],
      \ 'M' : [':MarkdownPreviewStop'    , 'markdown preview stop'],
      \ 'C' : [':Toc'                    , 'table of contents'],
      \ 'n' : [':set nonumber!'          , 'line-numbers'],
      \ 'r' : [':set norelativenumber!'  , 'relative line nums'],
      \ 's' : ['<Plug>(easymotion-s2)'   , 'easymotion'],
      \ 'v' : [':VimuxPromptCommand'     , 'vimux command'],
      \ 'l' : [':VimuxRunLastCommand'    , 'last command'],
      \ 'c' : [':VimuxCloseRunner'       , 'close runner'],
      \ 't' : [':let g:VimuxHeight = "30" | let g:VimuxOrientation = "h" | call VimuxOpenRunner() | exe "normal \<c-l>"'       , 'run terminal v'],
      \ 'T' : [':let g:VimuxHeight = "20" | let g:VimuxOrientation = "v" | call VimuxOpenRunner() | exe "normal \<c-j>"'       , 'run terminal h'],
      \ 'S' : [':call VimuxRunCommand("server")'   , 'server'],
      \ 'z' : ['<Plug>ZVKeyDocset'       , 'zeal'],
      \ 'zn' : [':Zeavim'                , 'zeal normal'],
      \ 'zd' : [':Zeavim!'               , 'zeal docset'],
      \ }
"}}}

"{{{ b is for buffer
let g:which_key_map.b = {
      \ 'name' : '+buffer' ,
      \ 'd' : [':bdelete'               , 'delete-buffer'],
      \ 'f' : ['bfirst'                 , 'first-buffer'],
      \ 'l' : ['blast'                  , 'last buffer'],
      \ 'n' : ['bnext'                  , 'next-buffer'],
      \ 'p' : ['bprevious'              , 'previous-buffer'],
      \ 'L' : [':BufferOrderByLanguage' , 'order by language'],
      \ 'z' : ['Buffers'                , 'fzf-buffer'],
      \ }
"}}}

"{{{ s is for search
let g:which_key_map.s = {
      \ 'name' : '+search' ,
      \ '/' : [':History/'     , 'history'],
      \ ';' : [':Commands'     , 'commands'],
      \ 'a' : [':Ag'           , 'text Ag'],
      \ 'b' : [':BLines'       , 'current buffer'],
      \ 'B' : [':Buffers'      , 'open buffers'],
      \ 'c' : [':Commits'      , 'commits'],
      \ 'C' : [':BCommits'     , 'buffer commits'],
      \ 'f' : [':FZF ~'        , 'search in ~'],
      \ 'g' : [':GFiles'       , 'git files'],
      \ 'G' : [':GFiles?'      , 'modified git files'],
      \ 'h' : [':History'      , 'file history'],
      \ 'H' : [':History:'     , 'command history'],
      \ 'l' : [':Lines'        , 'lines'] ,
      \ 'm' : [':Marks'        , 'marks'] ,
      \ 'M' : [':Maps'         , 'normal maps'] ,
      \ 'p' : [':Helptags'     , 'help tags'] ,
      \ 'P' : [':Tags'         , 'project tags'],
      \ 's' : [':Snippets'     , 'snippets'],
      \ 'S' : [':Colors'       , 'color schemes'],
      \ 't' : [':Rg'           , 'text Rg'],
      \ 'T' : [':BTags'        , 'buffer tags'],
      \ 'w' : [':Windows'      , 'search windows'],
      \ 'y' : [':Filetypes'    , 'file types'],
      \ 'z' : [':FZF'          , 'FZF'],
      \ }
"}}}

"{{{ l is for language server protocol
let g:which_key_map.l = {
      \ 'name' : '+lsp' ,
      \ '.' : [':CocConfig'                          , 'config'],
      \ ';' : ['<Plug>(coc-refactor)'                , 'refactor'],
      \ 'a' : ['<Plug>(coc-codeaction)'              , 'code action'],
      \ 'A' : ['<Plug>(coc-codeaction-selected)'     , 'selected action'],
      \ 'b' : [':CocNext'                            , 'next action'],
      \ 'B' : [':CocPrev'                            , 'prev action'],
      \ 'c' : [':CocList commands'                   , 'commands'],
      \ 'd' : ['<Plug>(coc-definition)'              , 'definition'],
      \ 'D' : ['<Plug>(coc-declaration)'             , 'declaration'],
      \ 'e' : [':CocList extensions'                 , 'extensions'],
      \ 'f' : ['<Plug>(coc-format-selected)'         , 'format selected'],
      \ 'F' : ['<Plug>(coc-format)'                  , 'format'],
      \ 'h' : ['<Plug>(coc-float-hide)'              , 'hide'],
      \ 'i' : ['<Plug>(coc-implementation)'          , 'implementation'],
      \ 'I' : [':CocList diagnostics'                , 'diagnostics'],
      \ 'j' : ['<Plug>(coc-float-jump)'              , 'float jump'],
      \ 'l' : ['<Plug>(coc-codelens-action)'         , 'code lens'],
      \ 'n' : ['<Plug>(coc-diagnostic-next)'         , 'next diagnostic'],
      \ 'N' : ['<Plug>(coc-diagnostic-next-error)'   , 'next error'],
      \ 'o' : [':Vista!!'                            , 'outline'],
      \ 'O' : [':CocList outline'                    , 'search outline'],
      \ 'p' : ['<Plug>(coc-diagnostic-prev)'         , 'prev diagnostic'],
      \ 'P' : ['<Plug>(coc-diagnostic-prev-error)'   , 'prev error'],
      \ 'q' : ['<Plug>(coc-fix-current)'             , 'quickfix'],
      \ 'r' : ['<Plug>(coc-references)'              , 'references'],
      \ 'R' : ['<Plug>(coc-rename)'                  , 'rename'],
      \ 's' : [':CocList -I symbols'                 , 'references'],
      \ 'S' : [':CocList snippets'                   , 'snippets'],
      \ 't' : ['<Plug>(coc-type-definition)'         , 'type definition'],
      \ 'u' : [':CocListResume'                      , 'resume list'],
      \ 'U' : [':CocUpdate'                          , 'update CoC'],
      \ 'z' : [':CocDisable'                         , 'disable CoC'],
      \ 'Z' : [':CocEnable'                          , 'enable CoC'],
      \ }
"}}}

"{{{ t is for terminal
let g:which_key_map.t = {
      \ 'name' : '+terminal' ,
      \ ';' : [':FloatermNew'                                   , 'terminal'],
      \ 'f' : [':FloatermNew fzf'                               , 'fzf'],
      \ 'g' : [':FloatermNew lazygit'                           , 'git'],
      \ 'd' : [':FloatermNew lazydocker'                        , 'docker'],
      \ 'n' : [':FloatermNew node'                              , 'node'],
      \ 'N' : [':FloatermNew nnn'                               , 'nnn'],
      \ 'p' : [':FloatermNew python3'                           , 'python'],
      \ 'r' : [':FloatermNew ranger'                            , 'ranger'],
      \ 't' : [':FloatermToggle'                                , 'toggle'],
      \ 'y' : [':FloatermNew ytop'                              , 'ytop'],
      \ 's' : [':FloatermNew ncdu'                              , 'ncdu'],
      \ }
"}}}

"{{{ k is for task
let g:which_key_map.k = {
      \ 'name' : '+task' ,
      \ 'c' : [':AsyncTask file-compile'      , 'compile file'],
      \ 'b' : [':AsyncTask project-build'     , 'build project'],
      \ 'e' : [':AsyncTaskEdit'               , 'edit local tasks'],
      \ 'f' : [':AsyncTaskFzf'                , 'find task'],
      \ 'g' : [':AsyncTaskEdit!'              , 'edit global tasks'],
      \ 'h' : [':AsyncTaskList!'              , 'list hidden tasks'],
      \ 'l' : [':CocList tasks'               , 'list tasks'],
      \ 'o' : [':copen'                       , 'open task view'],
      \ 'm' : [':AsyncTaskMacro'              , 'macro help'],
      \ 'r' : [':AsyncTask file-run'          , 'run file'],
      \ 'p' : [':AsyncTask project-run'       , 'run project'],
      \ 'x' : [':cclose'                      , 'close task view'],
     \ }
"}}}

"{{{ g is for git
let g:which_key_map.g = {
      \ 'name' : '+git' ,
      \ 'a' : [':Git add .'                        , 'add all'],
      \ 'A' : [':CocCommand fzf-preview.GitStatus' , 'actions'],
      \ 'b' : [':Git blame'                        , 'blame'],
      \ 'B' : [':GBrowse'                          , 'browse'],
      \ 'c' : [':Git commit'                       , 'commit'],
      \ 'd' : [':Git diff'                         , 'diff'],
      \ 'D' : [':Gdiffsplit'                       , 'diff split'],
      \ 'g' : [':GGrep'                            , 'git grep'],
      \ 'G' : [':Gstatus'                          , 'status'],
      \ 'h' : [':GitGutterLineHighlightsToggle'    , 'highlight hunks'],
      \ 'H' : ['<Plug>(GitGutterPreviewHunk)'      , 'preview hunk'],
      \ 'i' : [':Gist -b'                          , 'post gist'],
      \ 'j' : ['<Plug>(GitGutterNextHunk)'         , 'next hunk'],
      \ 'k' : ['<Plug>(GitGutterPrevHunk)'         , 'prev hunk'],
      \ 'l' : [':Git log'                          , 'log'],
      \ 'm' : ['<Plug>(git-messenger)'             , 'message'],
      \ 'p' : [':Git push'                         , 'push'],
      \ 'P' : [':Git pull'                         , 'pull'],
      \ 'r' : [':GRemove'                          , 'remove'],
      \ 's' : ['<Plug>(GitGutterStageHunk)'        , 'stage hunk'],
      \ 'S' : [':CocCommand fzf-preview.GitStatus' , 'status'],
      \ 't' : [':GitGutterSignsToggle'             , 'toggle signs'],
      \ 'u' : ['<Plug>(GitGutterUndoHunk)'         , 'undo hunk'],
      \ 'v' : [':GV'                               , 'view commits'],
      \ 'V' : [':GV!'                              , 'view buffer commits'],
      \ }
"}}}

" Register which key map
call which_key#register('<Space>', "g:which_key_map")
"}}}
