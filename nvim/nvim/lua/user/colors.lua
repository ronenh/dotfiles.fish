local colorscheme = os.getenv('NVIM_COLORSCHEME') or "base16-ashes"
vim.cmd("colorscheme " .. colorscheme)
vim.o.background = os.getenv('NVIM_COLORSCHEME_BG') or "dark"


function Termco(id)
	return vim.g['terminal_color_' .. id]
end

-- -- Read colorscheme from $XDG_CONFIG_HOME/.base16_theme
-- local xdg_config = vim.env.XDG_CONFIG_HOME or '$HOME/.config'
-- local base16_theme_fname = vim.fn.expand(xdg_config .. '/.base16_theme')
--
-- -- This is how we switch colorschemes
-- local function set_colorscheme(name)
-- 	-- write our colorscheme back to our single source of truth
-- 	vim.fn.writefile({ name }, base16_theme_fname)
-- 	-- set Neovim's colorscheme
-- 	vim.cmd('colorscheme ' .. name)
-- 	-- execute `kitty @ set-colors -c <color>` to change terminal window's
-- 	-- colors and newly created terminal windows colors
-- 	vim.system({ 'touch', '/Users/ronenhilewicz/loop.txt' }, { text = true })
-- 	vim.system(
-- 		{ 'kitty', '@', 'set-colors', '-c', string.format(vim.env.HOME .. '/base16-kitty/colors/%s.conf', name) },
-- 		{ text = true }
-- 	)
-- end
--
-- set_colorscheme(vim.fn.readfile(base16_theme_fname)[1])
--
-- vim.keymap.set('n', '<leader>cs', function()
-- 	local colors = vim.fn.getcompletion('base16', 'color')
-- 	-- we're trying to mimic VSCode so we'll use dropdown theme
-- 	local theme = require('telescope.themes').get_dropdown()
-- 	-- create our picker
-- 	require('telescope.pickers').new(theme, {
-- 		prompt_title = 'Change Base16 Colorscheme',
-- 		finder = require('telescope.finders').new_table {
-- 			results = colors
-- 		},
-- 		sorter = require('telescope.config').values.generic_sorter(theme),
-- 		attach_mappings = function(bufnr)
-- 			local actions = require("telescope.actions")
-- 			local action_state = require "telescope.actions.state"
-- 			-- change the colors upon selection
-- 			actions.select_default:replace(function()
-- 				set_colorscheme(action_state.get_selected_entry().value)
-- 				actions.close(bufnr)
-- 			end)
-- 			-- actions.shift_selection:enhance({
-- 			-- 	-- change the colors upon scrolling
-- 			-- 	post = function()
-- 			-- 		set_colorscheme(action_state.get_selected_entry().value)
-- 			-- 	end
-- 			-- })
-- 			return true
-- 		end
-- 	}):find()
-- end, { desc = 'Change colorscheme' })
