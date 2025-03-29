-- Treesitter for syntax highlighting

return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function ()
        local configs = require("nvim-treesitter.configs")

        configs.setup({
            ensure_installed = {
                -- languages
                "java",
                "python",
                "lua",
                "javascript",
                "typescript",
                "php",

                -- pseudo
                "json",
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
            incremental_selection = {
                enable = true,
                keymaps = {

                    -- Cant find a way to make this work
                    init_selection = "<C-s>",
                    node_incremental = "<C-n>",
                    scope_incremental = "<C-s>",
                    node_decremental = "<C-m>",
                }
            }
        })
    end
}

