return {
    "nvim-lualine/lualine.nvim",
    config = function()
        require("lualine").setup({
            option = {
                theme = "iceberg_dark",
            },
        })
    end,
}
