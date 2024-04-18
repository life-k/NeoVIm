return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local config = require("nvim-treesitter.configs")
    config.setup({
      ensure_install = {"lua", "vimdoc", "c" },
      highight = { enable = true},
      indent = { enable = true},
    })
  end
}

