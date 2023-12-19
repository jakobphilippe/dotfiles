return {
	{
		"rose-pine/neovim",
		config = function()
			require("rose-pine").setup({
				-- other configuration options...
				disable_background = true,
				disable_italics = true,
				-- the rest of your configuration...
			})
			vim.cmd("colorscheme rose-pine-moon")
		end,
	},
}
