require("telescope").setup({
	defaults = {
		file_ignore_patterns = { ".git/", "node_modules" },
	},
	pickers = {
		find_files = {
			hidden = true,
		},
		live_grep = {
			additional_args = function(opts)
				return { "--hidden" }
			end,
		},
	},
})
