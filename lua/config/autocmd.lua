-- highlight yanked text
vim.api.nvim_create_autocmd("TextYankPost", {
	group = vim.api.nvim_create_augroup("highlight-on-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

-- make help page take full screen
vim.api.nvim_create_autocmd("BufEnter", {
	pattern = "*",
	callback = function()
		if vim.bo.buftype == "help" then
			vim.cmd("only")
		end
	end,
})

-- Smart line numbers: relative in normal mode, absolute in insert mode
local number_toggle_group = vim.api.nvim_create_augroup("NumberToggle", { clear = true })

vim.api.nvim_create_autocmd({ "BufEnter", "FocusGained", "InsertLeave", "WinEnter" }, {
	pattern = "*",
	group = number_toggle_group,
	callback = function()
		if vim.o.number and vim.api.nvim_get_mode().mode ~= "i" then
			vim.opt.relativenumber = true
		end
	end,
})

vim.api.nvim_create_autocmd({ "BufLeave", "FocusLost", "InsertEnter", "WinLeave" }, {
	pattern = "*",
	group = number_toggle_group,
	callback = function()
		if vim.o.number then
			vim.opt.relativenumber = false
		end
	end,
})
