-- Global
vim.opt.fillchars = { vert = ' ' }
vim.opt.showtabline = 2
vim.opt.scrolloff = 5
vim.opt.mouse = 'a'
vim.opt.backupcopy = 'yes'
vim.opt.undolevels = 1000
vim.opt.shortmess:append { c = true, S = true }
vim.opt.showmode = false
vim.opt.hidden = true
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.wrapscan = true
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.showcmd = true
vim.opt.showmatch = true
vim.opt.ignorecase = true
vim.opt.hlsearch = true
vim.opt.smartcase = true
vim.opt.errorbells = false
vim.opt.joinspaces = false
vim.opt.title = true
vim.opt.lazyredraw = true
vim.opt.encoding = 'UTF-8'
vim.opt.completeopt = { 'menu', 'menuone', 'noselect' }
vim.opt.clipboard = 'unnamedplus'
vim.opt.listchars = { tab = ">>>", trail = "·", precedes = "←", extends = "→",eol = "↲", nbsp = "␣" }
-- Buffer
vim.opt.fileformat = 'unix'
vim.opt.tabstop = 2
vim.opt.spelllang = 'en'
vim.opt.softtabstop = 2
vim.opt.swapfile = false
vim.opt.undofile = false
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
-- Window
vim.opt.number = true
vim.opt.colorcolumn = "+1"
vim.opt.foldmethod = 'indent'
vim.opt.foldlevel = 1
vim.opt.list = false
vim.opt.foldnestmax = 10
vim.opt.signcolumn = 'yes'
vim.opt.relativenumber = true
vim.opt.foldenable = false
vim.opt.cursorline = true

vim.cmd[[autocmd BufReadPost * lua goto_last_pos()]]
function goto_last_pos()
  local last_pos = vim.fn.line("'\"")
  if last_pos > 0 and last_pos <= vim.fn.line("$") then
    vim.api.nvim_win_set_cursor(0, {last_pos, 0})
  end
end

vim.cmd 'au TextYankPost * silent! lua vim.highlight.on_yank()'

-- Highlighting symbol under cursor
vim.cmd([[autocmd ColorScheme  * :highlight LspReferenceRead ctermbg=0]])
vim.cmd([[autocmd CursorHold   * lua vim.lsp.buf.document_highlight()]])
vim.cmd([[autocmd CursorHoldI  * lua vim.lsp.buf.document_highlight()]])
vim.cmd([[autocmd CursorMoved  * lua vim.lsp.buf.clear_references()]])
vim.cmd([[autocmd CursorMovedI * lua vim.lsp.buf.clear_references()]])

-- vim.api.nvim_set_var('gutentags_trace', 1)
vim.api.nvim_set_var('mapleader', ';')

-- copy vimrc
vim.cmd [[
" Command Key Copy/Paste
" use command + c
vnoremap <silent> <F12> "+y
" Yank file name / path of current buffer in Vim
noremap <silent> <F11> :let @+=expand("%")<CR>
" Git push to upstream automatically: https://github.com/tpope/vim-fugitive/issues/1272
nnoremap <silent> <Leader>gp :Git -c push.default=current push<CR>
]]
