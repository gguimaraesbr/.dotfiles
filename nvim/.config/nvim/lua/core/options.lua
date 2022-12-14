local options = {
	backup = false,
	clipboard = "unnamedplus",
	cmdheight = 2,
	completeopt = { "menuone", "noselect" },
	cursorline = true,
	expandtab = true,
	ignorecase = true,
	mouse = "a",
	number = true,
	pumheight = 10,
	scrolloff = 8,
	shiftwidth = 2,
	showmode = false,
	showtabline = 2,
	sidescrolloff = 8,
	signcolumn = "yes",
	smartcase = true,
	smartindent = true,
	splitbelow = true,
	splitright = true,
	swapfile = false,
	tabstop = 2,
	termguicolors = true,
	timeoutlen = 1000,
	undofile = true,
	updatetime = 300,
	wrap = false,
	writebackup = false,
}

vim.opt.shortmess:append("c")

vim.cmd("set whichwrap+=<,>,[,],h,l")

vim.opt.iskeyword:append("-")

for k, v in pairs(options) do
	vim.opt[k] = v
end
