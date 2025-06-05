-- Telescope file finder

return {
    'nvim-telescope/telescope.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        local telescope = require('telescope')
        local builtin = require('telescope.builtin')

        telescope.setup({
            defaults = {
                cwd = vim.fn.getcwd(),  -- Keep the current directory
            }
        })

        vim.keymap.set('n', '<leader>pf', builtin.find_files, { desc = 'Telescope find files' })
        vim.keymap.set('n', '<leader>gf', builtin.git_files, { desc = 'Telescope find git files' })

        vim.keymap.set('n', '<leader>ps',
            function()
                builtin.grep_string({search = vim.fn.input("Grep > ")})
            end, { desc = 'Telescope grep files' })

    end
}

