return {
	{
		'williamboman/mason.nvim',
		cmd = 'Mason',
		keys = {
			{ '<leader>cm', '<cmd>Mason<cr>', desc = 'Open Mason' },
		},
		config = true,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		dependencies = {
			'williamboman/mason.nvim',
		},
		config = true,
		opts = {
			ensure_installed = {
				'bashls',
				'cssls',
				'dockerls',
				'gopls',
				'graphql',
				'helmls',
				'html',
				'jsonls',
				'tsserver',
				'marksman',
				'pyright',
				'pylsp',
				'sqlls',
				'tailwindcss',
				'yamlls',
			},

		},
	},
}