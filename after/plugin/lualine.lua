require('lualine').setup {
    options = {
        icons_enabled = true,
        theme = 'oxocarbon',
    },
    sections = { lualine_a = {
        { 'mode', fmt = function(str) return str:sub(1,1) end } },
            lualine_b = {'branch'}
    }
}
