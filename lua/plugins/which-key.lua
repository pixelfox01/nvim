return { -- Useful plugin to show you pending keybinds.
	"folke/which-key.nvim",
	event = "VimEnter", -- Sets the loading event to 'VimEnter'
	config = function() -- this is the function that runs, after loading
		require("which-key").setup()

		-- document existing key chains
		require("which-key").register({
			["<leader>c"] = { name = "[C]ode", _ = "which_key_ignore" },
			["<leader>f"] = { name = "[F]ile", _ = "which_key_ignore" },
			["<leader>x"] = { name = "Trouble", _ = "which_key_ignore" },
			["<leader>s"] = { name = "[S]earch", _ = "which_key_ignore" },
			["<leader>d"] = { name = "[D]ocument", _ = "which_key_ignore" },
			["<leader>r"] = { name = "[R]ename", _ = "which_key_ignore" },
			["<leader>w"] = { name = "[W]orkspace", _ = "which_key_ignore" },
		})
		vim.o.timeout = true
	end,
}
