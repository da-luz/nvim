vim.g.mapleader = " "

-- Functionalities
vim.keymap.set("n", "Q", "<nop>", { desc = "Just dont play macros, dont even know what they are" })
vim.keymap.set("i", "<C-c>", "<Esc>", { desc = "Maps <Esc> in Insert mode" })
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, { desc = "Opens explorer"})

-- Code formatting
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, { desc = "LSP Format" })

vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Moves selected code up" })
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Moves selected code down" })

vim.keymap.set("v", "<", "<gv", { desc = "Retreat indentation" })
vim.keymap.set("v", ">", ">gv", { desc = "Create indentation" })

-- Copying and pasting
vim.keymap.set("x", "<leader>p", [["_dP]], { desc = "Delete selected and paste previous code in buffer" })
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]], { desc = "Copy selected to clipboard" })
vim.keymap.set("n", "<leader>Y", [["+Y]], { desc = "Copy line to clipboard" })

-- Find and replace
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = "Find and replace" })

vim.keymap.set("n", "<leader><leader>", function()
    local save_view = vim.fn.winsaveview()
    vim.cmd('%s/\\s\\+$//g')
    vim.fn.winrestview(save_view)
end, { desc = "Erase all trailing whitespaces from files" })

