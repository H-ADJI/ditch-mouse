return {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate", config = function()
  configs = require("nvim-treesitter.configs")
  configs.setup({
    ensure_installed = {"c", "lua", "python", "go", "json", "html"},
    sync_install = false,
    highlight = { enable = true },
    indent = { enable = true },
  })
end
}
