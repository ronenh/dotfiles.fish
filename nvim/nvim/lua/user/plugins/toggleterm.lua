return {
	{
		'akinsho/toggleterm.nvim',
		version = "*",
		opts = {
			direction = 'horizontal',
			open_mapping = [[<leader>tt]],
			size = function(term)
				if term.direction == "horizontal" then
					return 15
				elseif term.direction == "vertical" then
					return vim.o.columns * 0.4
				end
			end,
			float_opts = {},
		},
		keys = {
			{ '<leader>tf', '<cmd>ToggleTerm direction=float<CR>' },
			{ '<leader>tv', '<cmd>ToggleTerm direction=vertical<CR>' },
			{ '<leader>th', '<cmd>ToggleTerm direction=horizontal<CR>' },
		},
	},
}
