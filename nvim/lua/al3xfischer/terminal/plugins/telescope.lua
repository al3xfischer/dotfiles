local action_state = require('telescope.actions.set')
local actions = require('telescope.actions')
require('telescope').load_extension('project')
require('telescope').setup {
    defaults = {
        file_sorter = require('telescope.sorters').get_fzy_sorter,
        prompt_prefix = ' >',
        color_devicons = true,
        file_previewer   = require('telescope.previewers').vim_buffer_cat.new,
        grep_previewer   = require('telescope.previewers').vim_buffer_vimgrep.new,
        qflist_previewer = require('telescope.previewers').vim_buffer_qflist.new,
        mappings = {
            i = {
                ["<C-x>"] = false,
                ["<C-q>"] = actions.smart_send_to_qflist,
                ["<C-j>"] = actions.move_selection_next,
                ["<C-k>"] = actions.move_selection_previous,
                },
            n = {
                ["<C-w>"] = actions.smart_send_to_qflist,
                }
        },
        layout_config = {
            preview_cutoff = 80
        }
    },
    extensions = {
        fzy_native = {
            override_generic_sorter = false,
            override_file_sorter = true,
        }
    }
}

require('telescope').load_extension('fzy_native')

local M = {}
M.search_dotfiles = function() 
	require("telescope.builtin").find_files({
		prompt_title = " <VimRC >",
		cwd = "~/.config/nvim",
	})
end

return M
