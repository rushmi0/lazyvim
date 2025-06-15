return {

    {
        "shellRaining/hlchunk.nvim",
        event = { "BufReadPre", "BufNewFile" },
        config = function()
            require("hlchunk").setup(
                    {
                        chunk = {
                            enable = true,
                            priority = 15,
                            style = {
                                { fg = "#806d9c" },
                                { fg = "#c21f30" },
                            },
                            use_treesitter = true,
                            chars = {
                                horizontal_line = "─",
                                vertical_line = "│",
                                left_top = "╭",
                                left_bottom = "╰",
                                right_arrow = ">",
                            },
                            textobject = "",
                            max_file_size = 1024 * 1024,
                            error_sign = true,
                            -- animation related
                            duration = 100,
                            delay = 200,
                        },

                        indent = {
                            enable = false
                        }
                    }
            )
        end
    },

    {
        "HiPhish/rainbow-delimiters.nvim",
        config = function()
            local rainbow_delimiters = require 'rainbow-delimiters'

            vim.g.rainbow_delimiters = {
                strategy = {
                    [''] = rainbow_delimiters.strategy['global'],
                    vim = rainbow_delimiters.strategy['local'],
                },
                query = {
                    [''] = 'rainbow-delimiters',
                    lua = 'rainbow-blocks',
                },
                highlight = {
                    'RainbowDelimiterRed',
                    'RainbowDelimiterYellow',
                    'RainbowDelimiterBlue',
                    'RainbowDelimiterOrange',
                    'RainbowDelimiterGreen',
                    'RainbowDelimiterViolet',
                    'RainbowDelimiterCyan',
                },
            }
        end
    }

}