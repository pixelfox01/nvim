return {
	"folke/trouble.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local trouble = require("trouble")
		-- Lua
		vim.keymap.set("n", "<leader>xx", function()
			trouble.toggle()
		end, { desc = "Toggle Diagnostics" })
		vim.keymap.set("n", "<leader>xw", function()
			trouble.toggle("workspace_diagnostics")
		end, { desc = "Workspace Diagnostics" })
		vim.keymap.set("n", "<leader>xd", function()
			trouble.toggle("document_diagnostics")
		end, { desc = "Document Diagnostics" })
		vim.keymap.set("n", "<leader>xq", function()
			trouble.toggle("quickfix")
		end, { desc = "QuickFix" })
	end,
}
