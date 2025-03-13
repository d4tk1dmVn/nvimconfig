return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
	},
	config = function()
		vim.keymap.set("n", "<leader>pv", ":Neotree filesystem reveal left<CR>", {})
		require("neo-tree").setup({
			event_handlers = {
				{
					event = "file_opened",
					handler = function()
						vim.cmd("Neotree close")
					end,
				},
			},
		})
	end,
}
