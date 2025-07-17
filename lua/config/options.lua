-- Line Numbers
vim.opt.number = true -- Show line numbers
vim.opt.relativenumber = true -- Show relative line numbers
vim.opt.numberwidth = 2 -- Set number column width to 2 {default 4}

vim.opt.showmode = false -- Don't display mode (e.g., -- INSERT --)
vim.opt.breakindent = true -- Enable break indent (preserves indentation on wrapped lines)
vim.opt.undofile = true -- Enable persistent undo
vim.opt.ignorecase = true -- Ignore case in search patterns
vim.opt.smartcase = true -- Override 'ignorecase' if search pattern contains upper case
vim.opt.signcolumn = "yes" -- Always show the sign column (gutter for icons)
vim.opt.updatetime = 250 -- Faster completion (default is 4000ms)
vim.opt.splitright = true -- Vertical splits open to the right
vim.opt.splitbelow = true -- Horizontal splits open below
vim.opt.inccommand = "split" -- Show live preview of substitutions
vim.opt.cursorline = true -- Highlight the current line
vim.opt.scrolloff = 10 -- Keep 10 lines visible above/below the cursor
vim.opt.tabstop = 4 -- The number of spaces that a tab character counts for
vim.opt.shiftwidth = 4 -- The number of spaces to use for each step of (auto)indent
vim.opt.softtabstop = 4 -- Number of spaces a tab counts for during editing operations
vim.opt.expandtab = true -- Convert tabs to spaces
vim.opt.termguicolors = true

vim.schedule(function()
	vim.opt.clipboard = "unnamedplus" -- Use the system clipboard
end)
