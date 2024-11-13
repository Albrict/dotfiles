-- global
local opts = { noremap = true, silent = true }
local builtin = require('telescope.builtin')
local map = vim.keymap.set

-- Telescope 

map('n', '<leader>ff', builtin.find_files, {})
map('n', '<leader>fg', builtin.live_grep, {})
map('n', '<leader>fb', builtin.buffers, {})
map('n', '<leader>fh', builtin.help_tags, {})

-- NvimTree
map("n", "<C-n>", ":NvimTreeToggle<cr>", opts)
-- Better window navigation
map("n", "<C-h>", "<C-w>h")
map("n", "<C-j>", "<C-w>j")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-l>", "<C-w>l")
map("n", "<esc>", ":noh<cr><esc>", opts)

map("n", "<C-Up>", ":resize +2<CR>")
map("n", "<C-Down>", ":resize -2<CR>")
map("n", "<C-Left>", ":vertical resize -2<CR>")
map("n", "<C-Right>", ":vertical resize +2<CR>")

--Navigate buffers
map("n", "<Tab>", ":bnext<CR>", opts)
map("n", "<S-Tab>", ":bprevious<CR>", opts)
map("n", "<leader>x", ":Bdelete<CR>", opts)

--Visual 
--Stay in indent mode
map("v", "<", "<gv")
map("v", ">", ">gv")

--Move text up and down
map("v", "<A-j>", ":m .+1<CR>==")
map("v", "<A-k>", ":m .-2<CR>==")
map("v", "p", '"_dP')

--Visual Block --
--Move text up and down
map("x", "J", ":move '>+1<CR>gv-gv")
map("x", "K", ":move '<-2<CR>gv-gv")
map("x", "<A-j>", ":move '>+1<CR>gv-gv")
map("x", "<A-k>", ":move '<-2<CR>gv-gv")

--Terminal --
--Better terminal navigation
map("t", "<C-h>", "<C-\\><C-N><C-w>h" )
map("t", "<C-j>", "<C-\\><C-N><C-w>j" )
map("t", "<C-k>", "<C-\\><C-N><C-w>k" )
map("t", "<C-l>", "<C-\\><C-N><C-w>l" )
map("t", "<C-e>", "<C-\\><C-n>") -- Exit terminal mode
map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
