-- Colorscheme configuration

return {
    'AlexvZyl/nordic.nvim',
    lazy = false,
    priority = 1000,
    config = function()
        require('nordic').setup({
            bold_keywords = true,

            -- Setting background transparency
            transparent = {
                bg = true,
            },

            -- Telescope themes
            telescope = {
                -- Available styles: `classic`, `flat`.
                style = 'classic',
            },

            cursorline = {

                -- Setting for more constrast when selecting
                -- Available styles: 'dark', 'light'.
                theme = 'light',
            },
        })
        require('nordic').load()
    end
}

