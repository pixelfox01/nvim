return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
	},
	{
		"navarasu/onedark.nvim",
		name = "onedark",
		priority = 1000,
		config = function()
			require("onedark").setup({
				style = "warmer",
				code_style = {
					variables = "italic",
				},
			})
			vim.cmd("colorscheme onedark")
		end,
	},
}
