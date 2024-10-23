vim.g.mapleader = ',' -- change the <leader> key to be comma

local keymap = vim.keymap

keymap.set('n', '<C-S-n>', function()
	vim.opt.relativenumber = not vim.o.relativenumber
end, {
	desc = "toggle relative/absolute line numbers",
})

-- Move to window using the <C-hjkl> keys
keymap.set('n', '<C-h>', '<C-w>h', { desc = 'Switch to left window' })
keymap.set('n', '<C-j>', '<C-w>j', { desc = 'Switch to lower window' })
keymap.set('n', '<C-k>', '<C-w>k', { desc = 'Switch to upper window' })
keymap.set('n', '<C-l>', '<C-w>l', { desc = 'Switch to right window' })

-- Close the currnet buffer and move to the previous one
keymap.set('n', '<leader>z', ':bp<CR>:bd #<CR>', { desc = 'Close the current buffer', silent = true })
