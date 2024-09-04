return {
	"akinsho/toggleterm.nvim",
	version = "*",
	config = function()
		require("toggleterm").setup({
			size = vim.o.columns * 0.4,
			direction = "vertical",
		})

		-- Key mappings
		vim.keymap.set({ "n", "t" }, "<leader>tt", "<cmd>ToggleTerm<cr>", { desc = "Toggle Terminal" })
	end,
}
