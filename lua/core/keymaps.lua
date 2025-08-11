vim.g.mapleader = ' ' -- Set <space> as the leader key
vim.g.maplocalleader = ' ' --  NOTE: Must happen before plugins are loaded
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true }) --Disable spacebar default behavior
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' }) --Diagnostic keymaps
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>') -- Clear highlights on search when pressing <Esc> in normal mode
vim.keymap.set('n', '<leader>lw', '<cmd>set wrap!<CR>') -- Toggle line wrap
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' }) -- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' }) -- Keymaps to make
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' }) -- split
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' }) -- navigation
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' }) -- easier
vim.keymap.set("n", "<C-A-h>", "<C-w>H", { desc = "Move window to the left" })
vim.keymap.set("n", "<C-A-l>", "<C-w>L", { desc = "Move window to the right" })
vim.keymap.set("n", "<C-A-j>", "<C-w>J", { desc = "Move window to the lower" })
vim.keymap.set("n", "<C-A-k>", "<C-w>K", { desc = "Move window to the upper" })
vim.keymap.set('n', '<leader>v', '<C-w>v', { desc = "Split window vertically" })
vim.keymap.set('n', '<leader>h', '<C-w>s', { desc = "Split window horizontally" })
vim.keymap.set('n', '<leader>se', '<C-w>=', { desc = "Make splits equal size" })
vim.keymap.set('n', '<leader>xs', ':close<CR>', { desc = "Close split" })
vim.keymap.set('n', '<Tab>', ':bnext<CR>', { desc = "Next buffer" })
vim.keymap.set('n', '<S-Tab>', ':bprevious<CR>', { desc = "Previous buffer" })
vim.keymap.set('n', '<leader>b', '<cmd> enew <CR>', { desc = "New buffer" })
vim.keymap.set('n', '<leader>x', ':bd<CR>', { desc = "Close buffer" })
vim.keymap.set('n', '<A-h>', ':vertical resize -2<CR>', { desc = "Make window vertically smaller" })
vim.keymap.set('n', '<A-l>', ':vertical resize +2<CR>', { desc = "Make window vertically bigger" })
vim.keymap.set('n', '<A-j>', ':resize -2<CR>', { desc = "Make window horizontally smaller" })
vim.keymap.set('n', '<A-k>', ':resize +2<CR>', { desc = "Make window horizontally bigger" })
vim.keymap.set('n', '<C-CR>', ':10split | terminal<CR>', { desc = "Opens terminal emulator" })
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.hl.on_yank()
  end,
})
