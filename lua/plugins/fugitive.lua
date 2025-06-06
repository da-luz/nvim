-- Git integration

return {
    "tpope/vim-fugitive",
    config = function()

        vim.keymap.set("n", "<leader>gs",  function()
            vim.cmd('Git status')
        end, { desc = "Runs `git status` command" })

        vim.keymap.set("n", "<leader>gt", function()
            vim.cmd('Git stash')
        end, { desc = "Runs `git stash` command" })

        vim.keymap.set("n", "<leader>ga", function()
            vim.cmd('Git stash apply')
        end, { desc = "Applies git stashed changes" })

        vim.keymap.set("n", "<leader>gb", function()
            if vim.bo.filetype == 'fugitiveblame' then
                vim.cmd('close')
            else
                vim.cmd('Git blame')
            end
        end, { desc = "Toggle git blame window" })
    end
}

