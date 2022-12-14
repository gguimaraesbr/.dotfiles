require("nvim-treesitter.configs").setup({
	ensure_installed = "all",
	ignore_install = { "" },
	highlight = {
		enable = true,
		disable = { "css" },
	},
	autopairs = {
		enable = true,
	},
	indent = { enable = true, disable = { "python", "css" } },
})
