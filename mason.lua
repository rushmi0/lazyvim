-- Customize Mason tools and auto-install them using mason-tool-installer

---@type LazySpec
return {
    {
        "WhoIsSethDaniel/mason-tool-installer.nvim", -- Plugin for automatically installing Mason packages
        -- Override default setup for mason-tool-installer
        opts = {
            -- Tools listed here will be automatically installed by Mason
            -- Refer to :Mason for exact package names
            ensure_installed = {
                -- Language servers
                "lua-language-server",    -- LSP for Lua
                "rust-analyzer",          -- LSP for Rust

                -- Debuggers
                "codelldb",               -- Debugger for Rust/C++
                "debugpy",                -- Debugger for Python
                "js-debug-adapter",       -- Debugger for JavaScript (Node.js, Chrome, etc.)

                -- Formatters
                "stylua",                 -- Formatter for Lua

                -- Others
                "tree-sitter-cli",        -- Required for some tree-sitter-based features
            },
        },
    },
}
