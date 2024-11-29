-- Navigate splits
vim.keymap.set('n', '<c-j>', '<c-w><c-j>')
vim.keymap.set('n', '<c-k>', '<c-w><c-k>')
vim.keymap.set('n', '<c-l>', '<c-w><c-l>')
vim.keymap.set('n', '<c-h>', '<c-w><c-h>')

-- Resize split
vim.keymap.set('n', '<M-,>', '<c-w>5<')
vim.keymap.set('n', '<M-.>', '<c-w>5>')
vim.keymap.set('n', '<M-t>', '<C-W>+')
vim.keymap.set('n', '<M-s>', '<C-W>-')

-- Buffer navigation
vim.keymap.set('n', '[b', '<cmd>bprev<cr>')
vim.keymap.set('n', ']b', '<cmd>bnext<cr>')

-- Move text up
vim.keymap.set('n', '<M-k>', ':m .-2<CR>==')
vim.keymap.set('v', '<M-k>', ":m '<-2<CR>gv=gv")

-- Move text down
vim.keymap.set('v', '<M-j>', ":m '>+1<CR>gv=gv")
vim.keymap.set('n', '<M-j>', ':m .+1<CR>==')

-- Clear search highlights
vim.keymap.set('n', '<Esc>', ':nohlsearch<Esc>', { noremap = true, silent = true })
