require("indent_blankline").setup({
	indent_blankline_use_treesitter = true,
	show_current_context = true,
	indent_blankline_buftype_exclude = { "terminal", "nofile" },
	indent_blankline_filetype_exclude = {
		"help",
		"packer",
		"NvimTree",
	},
})
