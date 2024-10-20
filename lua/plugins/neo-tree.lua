return {
	"nvim-neo-tree/neo-tree.nvim",
	version = "*",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	cmd = "Neotree",
	keys = {
		{ "<leader>e", ":Neotree toggle<CR>", desc = "Toggle NeoTree", silent = true },
	},

	opts = {
		filesystem = {
			window = {
				width = 28,
			},
			filtered_items = {
				visible = true,
			},
		},
	},
}
