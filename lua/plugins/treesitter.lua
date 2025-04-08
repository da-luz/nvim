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
                "vim",

                -- web files
                "json",
                "jsonc",
                "html",
                "css",
                "htmldjango",

                -- data related
                "sql",
                "query",
                "csv",

                -- some... files...
                "dockerfile",
                "latex",
                "markdown",
                "markdown_inline",
                "yaml",

                -- docs
                "javadoc",
                "jsdoc",
                "luadoc",
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

