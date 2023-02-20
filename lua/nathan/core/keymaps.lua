vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

-- general keymaps
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- quit
keymap.set("n", "<leader>q", ":q<CR>")
keymap.set("n", "<leader>wq", ":wq<CR>")

-- split keymaps
keymap.set("n", "<C-h>", "<C-w>h")
keymap.set("n", "<C-j>", "<C-w>j")
keymap.set("n", "<C-k>", "<C-w>k")
keymap.set("n", "<C-l>", "<C-w>l")
keymap.set("n", "<leader>|", ":vsp<CR>")
keymap.set("n", "<leader>-", ":sp<CR>")

-- nerdtree keymaps
keymap.set("n", "<leader>j", ":NERDTreeToggle<CR>")

-- telescope keymaps
keymap.set('n', '<leader>ff', ":Telescope find_files<CR>")
keymap.set('n', '<leader>fg', ":Telescope live_grep<CR>")
keymap.set('n', '<leader>fb', ":Telescope buffers<CR>")
keymap.set('n', '<leader>fh', ":Telescope help_tags<CR>")

-- Goyo and limelight keymaps
keymap.set('n', "<leader>l", ":Goyo<CR>")

-- Resize with arrows
keymap.set("n", "<C-Up>", ":resize +2<CR>", opts)
keymap.set("n", "<C-Down>", ":resize -2<CR>", opts)
keymap.set("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap.set("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Terminal --
-- Better terminal navigation
keymap.set("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
keymap.set("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
keymap.set("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
keymap.set("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)

-- Spell check
keymap.set("n", "<leader>ss", ":set spell<CR>")
keymap.set("n", "<leader>ns", ":set spell!<CR>")
