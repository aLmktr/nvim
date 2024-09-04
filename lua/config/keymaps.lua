local map = vim.keymap.set

-- Search
map("n", "<Esc>", "<cmd>nohlsearch<CR>", { desc = "Clear search highlights" })

-- Insert Mode
map("i", "jj", "<Esc>", { desc = "Escape insert mode" })

-- Buffer Management
map("n", "<S-l>", "<cmd>bnext<CR>", { desc = "Next Buffer" })
map("n", "<S-h>", "<cmd>bprevious<CR>", { desc = "Prev Buffer" })
map("n", "<leader>x", "<cmd>bd<CR>", { desc = "Close current buffer" })

-- Resize window using <ctrl> arrow keys
map({ "n", "t" }, "<C-S-k>", "<cmd>resize +2<CR>", { desc = "Increase Window Height" })
map({ "n", "t" }, "<C-S-j>", "<cmd>resize -2<CR>", { desc = "Decrease Window Height" })
map({ "n", "t" }, "<C-S-h>", "<cmd>vertical resize -2<CR>", { desc = "Decrease Window Width" })
map({ "n", "t" }, "<C-S-l>", "<cmd>vertical resize +2<CR>", { desc = "Increase Window Width" })

-- Comments
map("n", "<leader>/", "gcc", { desc = "Toggle comment in normal mode", remap = true })
map("v", "<leader>/", "gc", { desc = "Toggle comment in visual mode", remap = true })

-- Diagnostics
map("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostics list" })

-- Terminal
map("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- Window Navigation
map("n", "<C-h>", "<C-w><C-h>", { desc = "Move to the left split" })
map("n", "<C-l>", "<C-w><C-l>", { desc = "Move to the right split" })
map("n", "<C-j>", "<C-w><C-j>", { desc = "Move to the split below" })
map("n", "<C-k>", "<C-w><C-k>", { desc = "Move to the split above" })
