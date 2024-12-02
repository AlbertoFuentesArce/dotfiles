return {
    {
        "nobbmaestro/nvim-andromeda",
        dependencies = { 
            { "tjdevries/colorbuddy.nvim", branch = "dev" } 
        },
        config = function()
            require("andromeda").setup({
                preset = "andromeda",
                styles = {
                    italic = true,
                },
                transparent_bg = false,
                colors = {
                    background = "#262a33",
                    --primary   = "#00e8c6", -- defaults to cyan
                    --secondary = "#ff00aa", -- defaults to pink
                    mono_1     = "#2f323c", -- secondary background and/or highlighting
                    mono_2     = "#3a3e4b", -- used for highlighting
                    mono_3     = "#464959", -- used for highlighting
                    mono_4     = "#606064",
                    mono_5     = "#a0a1a7", -- comments
                    mono_6     = "#d5ced9", -- normal text
                },
            })
        end,
    }
}
