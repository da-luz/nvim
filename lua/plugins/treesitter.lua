-- Language syntax highlighting

return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        require("nvim-treesitter.config").setup({
            install_dir = vim.fn.stdpath("data") .. "/lazy/nvim-treesitter",
        })

        vim.api.nvim_create_autocmd("FileType", {
            callback = function(ev)
                pcall(vim.treesitter.start, ev.buf)
            end,
        })

        local parsers = {
            -- languages
            "java",
            "python",
            "lua",
            "javascript",
            "typescript",
            "php",

            -- frameworks
            "tsx",
            "htmldjango",
            "blade",

            -- files
            "json",
            "html",
            "css",
            "csv",
            "yaml",
            "markdown",
            "markdown_inline",

            -- utils
            "vim",
            "sql",
            "query",
            "dockerfile",

            -- docs
            "javadoc",
            "jsdoc",
            "luadoc",
            "vimdoc",
        }

        local install = require("nvim-treesitter.install")
        for _, lang in ipairs(parsers) do
            install.install(lang)
        end
    end
}
