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

local project_venv_cache = {}
local venv_names = { ".venv", "venv" }

-- automatically run find_venv on FileType python, but only once per project
vim.api.nvim_create_autocmd("FileType", {
	pattern = "python",
	callback = function()
		local root_dir = vim.fn.getcwd()

		-- check if we've already set up the venv for this project
		if project_venv_cache[root_dir] then
			return
		end

		-- iterate over possible venv names
		local venv_path = nil
		for _, venv_name in ipairs(venv_names) do
			local possible_venv = root_dir .. "/" .. venv_name .. "/bin/python"
			if vim.fn.executable(possible_venv) == 1 then
				venv_path = possible_venv
				break
			end
		end

		if venv_path then
			-- Set Pyright pythonPath
			require("lspconfig").pyright.setup({
				settings = {
					pyright = {
						disableOrganizeImports = true,
					},
					python = {
						analysis = {
							ignore = { "*" },
						},
						pythonPath = venv_path,
					},
				},
			})
			print("Using virtual environment: " .. venv_path)
			-- cache the project path to avoid redundant checks
			project_venv_cache[root_dir] = true
		else
			print("No virtual environment found in project root")
		end
	end,
})
