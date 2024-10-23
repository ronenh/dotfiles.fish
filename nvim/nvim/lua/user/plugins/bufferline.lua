return {
	'akinsho/bufferline.nvim',
	version = "*",
	dependencies = 'nvim-tree/nvim-web-devicons',
	event = "VeryLazy",
	config = true,
	keys = {
		{ '<leader>bg', '<cmd>BufferLinePick<CR>',      desc = 'Show bufferline picker' },
		{ '<leader>bD', '<cmd>BufferLinePickClose<CR>', desc = 'Show bufferline close picker' },
	},
}
