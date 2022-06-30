-- use this table to disable/enable filetypes
vim.g.copilot_filetypes = { xml = false, markdown = false }

-- <C-]>
-- <Plug>(copilot-dismiss)

-- <M-]>
-- <Plug>(copilot-next)

-- <M-[>
-- <Plug>(copilot-previous)

vim.cmd[[highlight CopilotSuggestion guifg=#555555 ctermfg=8]]
