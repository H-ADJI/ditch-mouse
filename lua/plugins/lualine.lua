return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' } ,
    config = function()
        options = { theme = 'codedark' }
        require('lualine').setup({options = options})

    end
}
