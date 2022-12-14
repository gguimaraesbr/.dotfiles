require("nvim-tree").setup({
	ignore_ft_on_setup = {
		"alpha",
	},
	respect_buf_cwd = true,
	update_cwd = true,
	update_focused_file = {
		enable = true,
		update_cwd = true,
	},
})
