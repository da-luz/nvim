return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	opts = {
		ensure_installed = {
			-- languages
			"java",
			"python",
			"lua",
			"javascript", 
			"typescript",
			"php",

			-- pseudo
			"sql",
			"query",
			"html",
			"css",

			-- additionals
			"vim",
			"vimdoc",
		},
		sync_install = false,
		highlight = { enable = true },
		indent = { enable = true },  
	}
}
