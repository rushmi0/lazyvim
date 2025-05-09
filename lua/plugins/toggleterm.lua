return {

    {
        "akinsho/toggleterm.nvim",
        cmd = { "ToggleTerm", "TermExec" },
        keys = function()
            local Terminal = require("toggleterm.terminal").Terminal
            local function term_cmd(cmd, direction)
                return function()
                    Terminal:new({ cmd = cmd, direction = direction or "float", hidden = true }):toggle()
                end
            end

            local keys = {
                { "<leader>tf", "<cmd>ToggleTerm direction=float<cr>", desc = "ToggleTerm float", mode = "n" },
                { "<leader>th", "<cmd>ToggleTerm size=10 direction=horizontal<cr>", desc = "ToggleTerm horizontal", mode = "n" },
                { "<leader>tv", "<cmd>ToggleTerm size=80 direction=vertical<cr>", desc = "ToggleTerm vertical", mode = "n" },
                { "<F7>", "<cmd>ToggleTerm<cr>", desc = "Toggle terminal", mode = { "n", "t", "i" } },
                { "<C-'>", "<cmd>ToggleTerm<cr>", desc = "Toggle terminal", mode = { "n", "t", "i" } },
            }

            if vim.fn.executable("lazygit") == 1 then
                table.insert(keys, { "<leader>gg", term_cmd("lazygit"), desc = "ToggleTerm lazygit", mode = "n" })
                table.insert(keys, { "<leader>tl", term_cmd("lazygit"), desc = "ToggleTerm lazygit", mode = "n" })
            end

            if vim.fn.executable("node") == 1 then
                table.insert(keys, { "<leader>tn", term_cmd("node"), desc = "ToggleTerm node", mode = "n" })
            end

            local python = vim.fn.executable("python") == 1 and "python"
                    or (vim.fn.executable("python3") == 1 and "python3")
            if python then
                table.insert(keys, { "<leader>tp", term_cmd(python), desc = "ToggleTerm python", mode = "n" })
            end

            if vim.fn.executable("btm") == 1 then
                table.insert(keys, { "<leader>tt", term_cmd("btm"), desc = "ToggleTerm btm", mode = "n" })
            end


            return keys
        end,
        config = function()
            require("toggleterm").setup({
                size = 20,
                open_mapping = [[<C-\>]],
                direction = "float",
                float_opts = {
                    border = "curved",
                },
            })
        end,
    }


}
