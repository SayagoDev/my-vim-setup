local options = {
  backup = false,                          -- creates a backup file
  clipboard = "unnamedplus",               -- allows neovim to access the system clipboard
  cmdheight = 1,                           -- more space in the neovim command line for displaying messages
  completeopt = { "menuone", "noselect" }, -- mostly just for cmp
  conceallevel = 0,                        -- so that `` is visible in markdown files
  fileencoding = "utf-8",                  -- the encoding written to a file
  hlsearch = false,                        -- highlight all matches on previous search pattern
  ignorecase = true,                       -- ignore case in search patterns
  mouse = "a",                             -- allow the mouse to be used in neovim
  pumheight = 10,                          -- pop up menu height
  showmode = false,                        -- we don't need to see things like -- INSERT -- anymore
  showtabline = 2,                         -- always show tabs
  smartcase = true,                        -- smart case
  smartindent = true,                      -- make indenting smarter again
  splitbelow = true,                       -- force all horizontal splits to go below current window
  splitright = true,                       -- force all vertical splits to go to the right of current window
  swapfile = false,                        -- creates a swapfile
  termguicolors = true,                    -- set term gui colors (most terminals support this)
  timeoutlen = 200,                        -- time to wait for a mapped sequence to complete (in milliseconds)
  undofile = true,                         -- enable persistent undo
  updatetime = 300,                        -- faster completion (4000ms default)
  writebackup = false,                     -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
  expandtab = true,                        -- convert tabs to spaces
  shiftwidth = 2,                          -- the number of spaces inserted for each indentation
  tabstop = 4,                             -- insert 2 spaces for a tab
  cursorline = false,                      -- highlight the current line
  number = true,                           -- set numbered lines
  relativenumber = true,                   -- set relative numbered lines
  numberwidth = 4,                         -- set number column width to 2 {default 4}
  signcolumn = "auto",                     -- always show the sign column, otherwise it would shift the text each time
  wrap = false,                            -- display lines as one long line
  scrolloff = 8,                           -- is one of my fav
  sidescrolloff = 8,
  guifont = "monospace:h17",               -- the font used in graphical neovim applications
  laststatus = 0,
  -- showtabline = 0                          -- remove tabline
  -- colorcolumn = "80"                       -- draw a vertical line
}

local highlight = {
  -- Transparent Background
  "Normal ctermbg=NONE",

  -- Float Windows
  "FloatBorder",
  "NormalFloat",

  -- Split Window
  "WinSeparator",

  -- Details
  "SignColumn",

  -- Git Signs
  "GitSignsAdd",
  "GitSignsChange",
  "GitSignsDelete",

  -- LSP Diagnostic
  "DiagnosticSignWarn",
  "DiagnosticSignError",
  "DiagnosticSignHint",
  "DiagnosticSignInfo",
}

for k, v in pairs(options) do
  vim.opt[k] = v
end

for _, v in pairs(highlight) do
  vim.cmd('autocmd vimenter * hi '..v..' guibg=NONE')
end

vim.opt.shortmess:append "c"
vim.g.tokyodark_transparent_background = true
vim.g.gruvbox_contrast_dark = "hard"

vim.cmd [[set noshowmode noruler noshowcmd]]
vim.cmd [[set whichwrap+=<,>,[,],h,l]]
vim.cmd [[set iskeyword+=-]]
vim.cmd [[set formatoptions-=cro]] -- TODO: this doesn't seem to work
vim.cmd [[autocmd TermOpen * setlocal nonumber norelativenumber | startinsert]]
