return {
	{
		"craftzdog/solarized-osaka.nvim",
		lazy = true,
		priority = 1000,
		opts = function()
			return {
				transparent = true,
			}
		end,
	},
	{ "catppuccin/nvim", name = "catppuccin", priority = 1000 },
	{
		"ellisonleao/gruvbox.nvim",
		priority = 1000,
		config = true,
		opts = function()
			return {
				transparent = true,
			}
		end,
	},
}
