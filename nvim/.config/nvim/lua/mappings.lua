vim.g.mapleader = ' '

vim.cmd([[
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
tnoremap <c-n> <C-\><C-n>
]])

-- better indenting
vim.api.nvim_set_keymap('v', '<', '<gv', {noremap = true, silent = true})
vim.api.nvim_set_keymap('v', '>', '>gv', {noremap = true, silent = true})


-- Tab switch buffer
vim.api.nvim_set_keymap('n', '<TAB>', ':bnext<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<S-TAB>', ':bprevious<CR>', {noremap = true, silent = true})


vim.api.nvim_set_keymap('n', '<c-p>', ':Files<CR>', {noremap = true, silent = true})

vim.api.nvim_set_keymap('n', '<leader>gs', ':Git<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>gc', ':Git commit<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>gP', ':Git pull<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>gp', ':Git push<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>gvs', ':Gvdiffsplit!<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>gh', ':diffget \\2<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>gl', ':diffget \\3<CR>', {noremap = true, silent = true})

vim.api.nvim_set_keymap('n', '<leader>v', ':vsplit<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>h', ':split<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>t', ':vsplit<CR>:terminal<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>T', ':terminal<CR>', {noremap = true, silent = true})
