return {
    "folke/zen-mode.nvim",
    config = function() 
        vim.api.nvim_set_keymap('n', '<leader>z', ':ZenMode<CR>', { noremap = true, silent = true })
        require("zen-mode").setup(
            {
                window = {
                    backdrop = 0.95, -- shade the backdrop of the Zen window. Set to 1 to keep the same as Normal
                    -- height and width can be:
                    -- * an absolute number of cells when > 1
                    -- * a percentage of the width / height of the editor when <= 1
                    -- * a function that returns the width or the height
                    width = 160, -- width of the Zen window
                    height = .95, -- height of the Zen window
                }}
        )
    end
}
