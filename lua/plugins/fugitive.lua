return {
    "tpope/vim-fugitive",
    config = function()
        -- Declares git status function keymap
        vim.keymap.set("n", "<leader>gs",  function()
            vim.cmd('Git status')
        end)

        -- Declares git stash function keymap
        vim.keymap.set("n", "<leader>gt", function()
            vim.cmd('Git stash')
        end)

        -- Declares git stash apply function keymap
        vim.keymap.set("n", "<leader>ga", function()
            vim.cmd('Git stash apply')
        end)

        -- Toggles git blame window
        vim.keymap.set("n", "<leader>gb", function()
            if vim.bo.filetype == 'fugitiveblame' then
                vim.cmd('close')
            else
                vim.cmd('Git blame')
            end
        end)
    end
}
