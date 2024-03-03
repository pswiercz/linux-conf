vim.g.mapleader = ' '
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)

-- console log line
vim.keymap.set('n', '<leader>cl', '^v$yiconsole.log("A: ", pA);jddk')


-- delete in visual blck 
vim.keymap.set("x", "<leader>p", [["_dP]])
-- delete in visual to black hole 
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

vim.keymap.set("n", "<leader>l", "gt")
vim.keymap.set("n", "<leader>h", "gT")

vim.keymap.set('n', '<C-j>', '<C-W><C-J>')
vim.keymap.set('n', '<C-k>', '<C-W><C-K>')
vim.keymap.set('n', '<C-l>', '<C-W><C-L>')
vim.keymap.set('n', '<C-h>', '<C-W><C-H>')


vim.keymap.set({'n', 'i', 'v', 'x'}, '<leader>n', vim.cmd.NvimTreeOpen)

