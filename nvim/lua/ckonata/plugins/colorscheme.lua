return {
	{
		"mellow-theme/mellow.nvim",
		-- optional but recommended,
		-- pin to the latest stable release:
		-- tag = "*",
		lazy = false, -- load at start
		priority = 1000, -- load before others plugins
		config = function()
			vim.cmd.colorscheme("mellow")
		end,
		-- configuration
		opts = {},
	},
}
