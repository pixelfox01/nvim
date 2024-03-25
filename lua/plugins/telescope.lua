return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.6",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			local fb_actions = require("telescope._extensions.file_browser.actions")

			require("telescope").setup({
				extensions = {
					file_browser = {
						path = "%:p:h",
						select_buffer = true,
						mappings = {
							["n"] = {
								["-"] = fb_actions.goto_parent_dir,
							},
						},
					},
				},
			})

			require("telescope").load_extension("file_browser")

			-- Keymaps for Telescope
			vim.keymap.set("n", "<leader>sf", require("telescope.builtin").find_files, { desc = "[S]earch [F]iles" })
			vim.keymap.set("n", "<leader>sg", require("telescope.builtin").live_grep, { desc = "[S]earch by [G]rep" })

			-- Keymap for searching your Neovim configuration files
			vim.keymap.set("n", "<leader>sn", function()
				require("telescope.builtin").find_files({ cwd = vim.fn.stdpath("config") })
			end, { desc = "[S]earch [N]eovim files" })

			-- Keymap for Telescope File browser
			vim.keymap.set("n", "<space>fb", function()
				require("telescope").extensions.file_browser.file_browser()
			end, { desc = "[F]ile [B]rowser" })
		end,
	},

	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
				pickers = {
					colorscheme = {
						enable_preview = true,
					},
				},
			})
			require("telescope").load_extension("ui-select")
		end,
	},

	{
		"nvim-telescope/telescope-file-browser.nvim",
		dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
	},
}
