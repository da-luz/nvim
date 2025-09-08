-- Beautifies the status line

return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
        require('lualine').setup({
            options = {

                -- Kinda dont like icons
                icons_enabled = false,
                theme = 'nordic',
            },
            sections = {
                lualine_a = {'mode'},
                lualine_b = {'branch', 'diff', 'diagnostics'},
                lualine_c = { { 'filename', path=1 } }, -- Shows file path in current folder
                lualine_x = {'encoding', 'filetype'},
                lualine_y = {},
                lualine_z = {'location'}
            },
            inactive_sections = {
                lualine_b = {'branch', 'diff', 'diagnostics'},
                lualine_c = { { 'filename', path=1 } }, -- Shows file path in current folder
                lualine_x = {'encoding', 'filetype'},
            },
        })
    end
}

