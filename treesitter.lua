return {
    { "nvim-treesitter/playground", cmd = "TSPlaygroundToggle" },

    {
        "nvim-treesitter/nvim-treesitter",
        opts = {
            ensure_installed = {
                "astro",
                "cmake",
                "cpp",
                "css",
                "fish",
                "graphql",
                "http",
                "java",
                "php",
                "scss",
                "sql",
                "svelte",
            },

            -- matchup = {
            -- 	enable = true,
            -- },

            -- https://github.com/nvim-treesitter/playground#query-linter
            query_linter = {
                enable = true,
                use_virtual_text = true,
                lint_events = { "BufWrite", "CursorHold" },
            },

            playground = {
                enable = true,
                disable = {},
                updatetime = 25, -- Debounced time for highlighting nodes in the playground from source code
                persist_queries = true, -- Whether the query persists across vim sessions
                keybindings = {
                    toggle_query_editor = "o",
                    toggle_hl_groups = "i",
                    toggle_injected_languages = "t",
                    toggle_anonymous_nodes = "a",
                    toggle_language_display = "I",
                    focus_language = "f",
                    unfocus_language = "F",
                    update = "R",
                    goto_node = "<cr>",
                    show_help = "?",
                },
            },
        },
        config = function(_, opts)
            require("nvim-treesitter.configs").setup(opts)

            -- MDX
            vim.filetype.add({
                extension = {
                    mdx = "mdx",
                },
            })
            vim.treesitter.language.register("markdown", "mdx")
        end,
    },

    {
        "rayliwell/tree-sitter-rstml",
        dependencies = { "nvim-treesitter" },
        build = ":TSUpdate",
        config = function()
            require("tree-sitter-rstml").setup()
        end
    },

    -- Automatic tag closing and renaming (optional but highly recommended)
    {
        "windwp/nvim-ts-autotag",
        config = function()
            require("nvim-ts-autotag").setup()
        end,
    },


    -- {
    --     "stevearc/conform.nvim",
    --     -- event = 'BufWritePre', -- uncomment for format on save
    --     opts = require("config.conform"),
    -- },


    -- {
    --     'mrcjkb/rustaceanvim',
    --     version = '^6', -- Recommended
    --     lazy = false, -- This plugin is already lazy
    --     ft = "rust",
    --     config = function ()
    --         local mason_registry = require('mason-registry')
    --         local codelldb = mason_registry.get_package("codelldb")
    --         local extension_path = codelldb:get_install_path() .. "/extension/"

    --         -- If you are on Linux, replace the line above with the line below:
    --         local liblldb_path = extension_path .. "lldb/lib/liblldb.so"
    --         local codelldb_path = extension_path .. "adapter/codelldb"
    --         --local liblldb_path = extension_path.. "lldb/lib/liblldb.dylib"

    --         local cfg = require('rustaceanvim.config')

    --         vim.g.rustaceanvim = {
    --             dap = {
    --                 adapter = cfg.get_codelldb_adapter(codelldb_path, liblldb_path),
    --             },
    --         }
    --     end
    -- },

    -- {
    --     'rust-lang/rust.vim',
    --     ft = "rust",
    --     init = function ()
    --         vim.g.rustfmt_autosave = 1
    --     end
    -- },

    -- {
    --     'mfussenegger/nvim-dap',
    --     config = function()
    --         local dap, dapui = require("dap"), require("dapui")
    --         dap.listeners.before.attach.dapui_config = function()
    --             dapui.open()
    --         end
    --         dap.listeners.before.launch.dapui_config = function()
    --             dapui.open()
    --         end
    --         dap.listeners.before.event_terminated.dapui_config = function()
    --             dapui.close()
    --         end
    --         dap.listeners.before.event_exited.dapui_config = function()
    --             dapui.close()
    --         end
    --     end,
    -- },

    -- {
    --     'rcarriga/nvim-dap-ui',
    --     dependencies = {"mfussenegger/nvim-dap", "nvim-neotest/nvim-nio"},
    --     config = function()
    --         require("dapui").setup()
    --     end,
    -- },

    -- {
    --     'saecki/crates.nvim',
    --     ft = {"toml"},
    --     config = function()
    --         require("crates").setup {
    --             completion = {
    --                 cmp = {
    --                     enabled = true
    --                 },
    --             },
    --         }
    --         require('cmp').setup.buffer({
    --             sources = { { name = "crates" }}
    --         })
    --     end
    -- },


    --{
    --    "rest-nvim/rest.nvim",
    --    dependencies = {
    --        "nvim-treesitter/nvim-treesitter",
    --        opts = function (_, opts)
    --            opts.ensure_installed = opts.ensure_installed or {}
    --            table.insert(opts.ensure_installed, "http")
    --        end,
    --    }
    --}

}
