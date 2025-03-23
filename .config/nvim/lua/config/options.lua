-- Sync clipboard between OS and Neovim
vim.opt.clipboard = 'unnamedplus'

-- Highlight the screen line of the cursor
vim.opt.cursorline = true

-- Ignore case when using a search pattern
vim.opt.ignorecase = true

-- Show the line number for each line
vim.opt.number = true

-- Show the relative line number for each line
vim.opt.relativenumber = true

-- Do not display the current mode in the status line
vim.opt.showmode = false

-- Override 'ignorecase' when pattern has upper case characters
vim.opt.smartcase = true

-- A new window is put below the current one
vim.opt.splitbelow = true

-- A new window is put right of the current one
vim.opt.splitright = true

-- Automatically save and restore undo history
vim.opt.undofile = true

-- Convert tabs to spaces
vim.opt.expandtab = true

-- Use this number of spaces for indentation
vim.o.shiftwidth = 2

-- Insert 2 spaces for a tab
vim.o.tabstop = 2

-- Show status line always and ONLY the last window
vim.opt.laststatus = 3
