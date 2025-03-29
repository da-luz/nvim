-- Allows function arguments to be autocompleted

return {
    "ray-x/lsp_signature.nvim",
    config = function()
        require("lsp_signature").setup({
            bind = true,
            always_trigger = false,
            extra_trigger_chars = {"(", ",", "{"},
        })
    end
}

