return {
	{
		"nvim-treesitter/nvim-treesitter",
		opts = function(_, opts)
			-- Add additional parsers
			vim.list_extend(opts.ensure_installed, {
				"astro",
				"cmake",
				"cpp",
				"css",
				"fish",
				"gitignore",
				"go",
				"graphql",
				"http",
				"java",
				"php",
				"rust",
				"scss",
				"sql",
				"svelte",
			})

			-- MDX filetype
			vim.filetype.add({
				extension = {
					mdx = "mdx",
				},
			})
			vim.treesitter.language.register("markdown", "mdx")
		end,
	},
}