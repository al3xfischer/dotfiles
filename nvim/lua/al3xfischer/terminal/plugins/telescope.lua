local action_state = require('telescope.actions.set')
local actions = require('telescope.actions')
require('telescope').load_extension('project')
require('telescope').load_extension('terms') --nvchad terminals
require('telescope').setup {
    defaults = {
		file_ignore_patterns = { "target" },
        file_sorter = require('telescope.sorters').get_fzy_sorter,
        prompt_prefix = ' >',
        color_devicons = true,
        file_previewer   = require('telescope.previewers').vim_buffer_cat.new,
        grep_previewer   = require('telescope.previewers').vim_buffer_vimgrep.new,
        qflist_previewer = require('telescope.previewers').vim_buffer_qflist.new,
        mappings = {
            i = {
                -- ["<C-x>"] = false,
                ["<C-q>"] = actions.smart_send_to_qflist,
                ["<C-j>"] = actions.move_selection_next,
                ["<C-k>"] = actions.move_selection_previous,
				["<C-x>"] = actions.file_vsplit,
                },
            n = {
                ["<C-w>"] = actions.smart_send_to_qflist,
                }
        },
        layout_config = {
            preview_cutoff = 80
        }
    },
	pickers = {
		live_grep = {
			theme = "ivy",
		},
		find_files = {
			theme = "ivy",
		},
	},
    extensions = {
        fzy_native = {
            override_generic_sorter = false,
            override_file_sorter = true,
        },
		file_browser = {
			theme = "ivy",
		},
    }
}

require('telescope').load_extension('fzy_native')
require('telescope').load_extension('file_browser')

local M = {}
M.search_dotfiles = function() 
	require("telescope.builtin").find_files({
		prompt_title = " <VimRC >",
		cwd = "~/.config/nvim",
	})
end

return M
