-- <F1> help
-- <F2> vim-codepainter
vim.api.nvim_set_keymap('n', '<F3>', ':set number! relativenumber!<CR>', {noremap = true, silent = false})
vim.api.nvim_set_keymap('n', '<F4>', ':set list! list?<CR>', {noremap = false, silent = false})
vim.api.nvim_set_keymap('n', '<F6>', '<CMD>lua require("FTerm").toggle()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('t', '<F6>', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<F7>', ':NvimTreeFindFileToggle<CR>', {noremap = false, silent = true})
vim.api.nvim_set_keymap('n', '<leader>nm', ':Dispatch npm start<CR>', {noremap = false, silent = false})
-- Buffers
vim.api.nvim_set_keymap('n', '<leader>bda', ':BufferCloseAllButCurrent<CR>', {noremap = false, silent = false})
vim.api.nvim_set_keymap('n', '<leader>bn', ':BufferNext<CR>', {noremap = false, silent = false})
vim.api.nvim_set_keymap('n', '<leader>bp', ':BufferPrevious<CR>', {noremap = false, silent = false})
-- Git
vim.api.nvim_set_keymap('n', '<leader>gf', ':20G<CR>', {noremap = false, silent = false})
vim.api.nvim_set_keymap('n', '<leader>gg', ':LazyGit<CR>', {noremap = false, silent = false})
-- Ctrlsf
vim.api.nvim_set_keymap('n', '<C-F>f', '<Plug>CtrlSFPrompt', {noremap = false, silent = false})
vim.api.nvim_set_keymap('v', '<C-F>f', '<Plug>CtrlSFVwordExec', {noremap = false, silent = false})
vim.api.nvim_set_keymap('n', '<C-F>n', '<Plug>CtrlSFCwordExec', {noremap = false, silent = false})
vim.api.nvim_set_keymap('n', '<C-F>t', ':CtrlSFToggle<CR>', {noremap = true, silent = false})
-- Easy-align
vim.api.nvim_set_keymap('x', 'ga', '<Plug>(EasyAlign)', {noremap = false, silent = false})
vim.api.nvim_set_keymap('n', 'ga', '<Plug>(EasyAlign)', {noremap = false, silent = false})
-- Lightspeed
vim.api.nvim_set_keymap('n', 'f', '<Plug>Lightspeed_f', {noremap = false, silent = false})
vim.api.nvim_set_keymap('n', 'F', '<Plug>Lightspeed_F', {noremap = false, silent = false})
vim.api.nvim_set_keymap('n', 't', '<Plug>Lightspeed_t', {noremap = false, silent = false})
vim.api.nvim_set_keymap('n', 'T', '<Plug>Lightspeed_T', {noremap = false, silent = false})
-- LSP
vim.api.nvim_set_keymap('n', '<space>,', ':lua vim.lsp.diagnostic.goto_prev()<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<space>;', ':lua vim.lsp.diagnostic.goto_next()<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<space>a', ':lua vim.lsp.diagnostic.code_action()<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<space>d', ':lua vim.lsp.buf.definition()<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<space>f', ':lua vim.lsp.buf.formatting()<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<space>h', ':lua vim.lsp.buf.hover()<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<space>m', ':lua vim.lsp.buf.rename()<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<space>r', ':lua vim.lsp.buf.references()<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<space>s', ':lua vim.lsp.buf.document_symbol()<CR>', {noremap = true, silent = true})
-- Telescope
vim.api.nvim_set_keymap('n', '<leader>r', ":lua require('telescope.builtin').live_grep()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>bb', ":lua require('telescope.builtin').buffers()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>m', ":lua require('telescope.builtin').marks()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>t', ":lua require('telescope.builtin').treesitter()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>l', ":lua require('telescope.builtin').current_buffer_fuzzy_find()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>f', ":lua require('telescope.builtin').find_files()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>p', ":lua require('telescope').extensions.project.project{}<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>c', ":lua require('plugins.telescope').my_git_commits()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>g', ":lua require('plugins.telescope').my_git_status()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>b', ":lua require('plugins.telescope').my_git_bcommits()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>n', ":lua require('plugins.telescope').my_note()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>nn', ":e ~/Note/", {noremap = true, silent = false})
vim.api.nvim_set_keymap('n', '<leader>gc', ':Octo issue create<CR>', {noremap = true, silent = false})
vim.api.nvim_set_keymap('n', '<leader>i', ':Octo issue list<CR>', {noremap = true, silent = false})
vim.api.nvim_set_keymap('n', '<leader>y', ':Telescope neoclip<CR>', {noremap = true, silent = false})
-- HlsLens
vim.api.nvim_set_keymap('n', 'n', "<Cmd>execute('normal! ' . v:count1 . 'n')<CR><Cmd>lua require('hlslens').start()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'N', "<Cmd>execute('normal! ' . v:count1 . 'N')<CR><Cmd>lua require('hlslens').start()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '*', "*<Cmd>lua require('hlslens').start()<CR>", { noremap = true })
vim.api.nvim_set_keymap('n', '#', "#<Cmd>lua require('hlslens').start()<CR>", { noremap = true })
vim.api.nvim_set_keymap('n', 'g*', "g*<Cmd>lua require('hlslens').start()<CR>", { noremap = true })
vim.api.nvim_set_keymap('n', 'g#', "g#<Cmd>lua require('hlslens').start()<CR>", { noremap = true })
-- Todo-comments
vim.api.nvim_set_keymap('n', '<leader>to', ':TodoTelescope<CR>', {noremap = true, silent = false})
