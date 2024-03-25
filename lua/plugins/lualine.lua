return {
	"nvim-lualine/lualine.nvim",
	config = function()
		require("lualine").setup({
			sections = {
				lualine_b = {
					"buffers",
				},
				lualine_c = {},
				lualine_x = {
					"branch",
					"diff",
					"diagnostics",
				},
			},
			options = {
				theme = "jellybeans",
				globalstatus = true,
				icons_enabled = true,
				component_separators = "|",
				section_separators = "|",
			},
		})
	end,
}
