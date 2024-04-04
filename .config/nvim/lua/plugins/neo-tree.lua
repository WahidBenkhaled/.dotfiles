-- file browsing tree
return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
	},
	config = function() -- Neotree setup (file tree)
		vim.keymap.set("n", "<C-n>", ":Neotree filesystem reveal left<CR>", {}) -- set Ctrl+n keybind
		require("neo-tree").setup({
			window = { width = 30 },
			close_if_last_window = true,
		})
	end,
}
