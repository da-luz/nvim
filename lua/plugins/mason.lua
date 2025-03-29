-- Mason is required for some LSPs

return {
	"williamboman/mason.nvim",
	config = function()
		require("mason").setup()
	end
}

