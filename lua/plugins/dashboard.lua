return {
	{
		"nvimdev/dashboard-nvim",
		opts = function()
			local logo = [[
 ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗
 ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║
 ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║
 ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║
 ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║
 ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝
            ]]

			logo = string.rep("\n", 8) .. logo .. "\n\n"

			local opts = {
				theme = "doom",
				hide = {
					statusline = false,
				},
				config = {
					header = vim.split(logo, "\n"),
					center = {
						{
							icon = " ",
							desc = "Open Projects Directory   ",
							key = "p",
							action = "e ~/projects/",
						},
						{
							icon = " ",
							desc = "Edit Neovim Config       ",
							key = "e",
							action = "e ~/.config/nvim/init.lua",
						},
						{
							icon = " ",
							desc = "Find Files               ",
							key = "f",
							action = "Telescope find_files",
						},
						{
							icon = " ",
							desc = "Search in Files          ",
							key = "s",
							action = "Telescope live_grep",
						},
						{
							icon = " ",
							desc = "Quit Neovim             ",
							key = "q",
							action = function()
								vim.api.nvim_input("<cmd>qa<cr>")
							end,
						},
					},
				},
			}
			return opts
		end,
	},
}
