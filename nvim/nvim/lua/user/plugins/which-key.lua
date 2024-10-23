return {
	'folke/which-key.nvim',
	event = "VeryLazy",
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 300
	end,
	config = function(_, opts)
		local wk = require("which-key")
		wk.setup(opts)
		wk.register({
			["g"] = { name = "+goto" },
			["]"] = { name = "+next" },
			["["] = { name = "+prev" },
			["<leader>b"] = { name = "+buffer" },
			["<leader>c"] = { name = "+code" },
			["<leader>d"] = { name = "+diagnostics" },
			["<leader>f"] = { name = "+find" },
			["<leader>g"] = { name = "+git" },
			["<leader>r"] = { name = "+refactor" },
			["<leader>t"] = { name = "+terminal" },
			["<leader>w"] = { name = "+workspace" },
		})
	end,
}
