local keymap = vim.keymap
local g = vim.g
local opts = { noremap = true, silent = true }

-- Leader key
g.mapleader = " "

-- Plugin: craftzdog discipline
local discipline = require("craftzdog.discipline")
discipline.cowboy()

-- ===============================
--           BASIC MAPPING
-- ===============================

-- Insert/Terminal mode movement
keymap.set("i", "<C-h>", "<Left>")
keymap.set("i", "<C-l>", "<Right>")
keymap.set("i", "<C-j>", "<Down>")
keymap.set("i", "<C-k>", "<Up>")
keymap.set("t", "<ESC>", "<C-\\><C-n>", opts)

-- Fast H/L movement
keymap.set("n", "H", "<S-Left>")
keymap.set("n", "L", "<S-Right>")

-- Visual paste without yanking
keymap.set("x", "p", 'p:let @+=@0<CR>:let @"=@0<CR>', { silent = true })

-- Line wrap-aware movement
keymap.set("n", "j", 'v:count || mode(1)[0:1] == "no" ? "j" : "gj"', { expr = true })
keymap.set("n", "k", 'v:count || mode(1)[0:1] == "no" ? "k" : "gk"', { expr = true })

-- No highlight on ESC
keymap.set("n", "<ESC>", "<cmd> noh <CR>")

-- ===============================
--          DELETE/PASTE FIXES
-- ===============================

-- Prevent yanking on delete/change/paste
keymap.set("n", "<Leader>p", '"0p')
keymap.set("n", "<Leader>P", '"0P')
keymap.set("v", "<Leader>p", '"0p')
keymap.set("n", "<Leader>c", '"_c')
keymap.set("n", "<Leader>C", '"_C')
keymap.set("v", "<Leader>c", '"_c')
keymap.set("v", "<Leader>C", '"_C')
keymap.set("n", "<Leader>D", '"_D')
keymap.set("v", "<Leader>d", '"_d')
keymap.set("v", "<Leader>D", '"_D')

-- Delete a word backwards
keymap.set("n", "dw", 'vb"_d')
keymap.set("n", "x", '"_x')
keymap.set("v", "d", '"_d')

-- ===============================
--       WINDOW / TAB / SPLIT
-- ===============================

-- Resize window
keymap.set("n", "<C-w><left>", "<C-w><")
keymap.set("n", "<C-w><right>", "<C-w>>")
keymap.set("n", "<C-w><up>", "<C-w>+")
keymap.set("n", "<C-w><down>", "<C-w>-")
keymap.set("n", "<C-left>", "<C-w><")

-- Move between splits
keymap.set("n", "sh", "<C-w>h")
keymap.set("n", "sk", "<C-w>k")
keymap.set("n", "sj", "<C-w>j")
keymap.set("n", "sl", "<C-w>l")

-- Tab
keymap.set("n", "te", ":tabedit ")
keymap.set("n", "<tab>", ":tabnext<Return>", opts)
keymap.set("n", "<s-tab>", ":tabprev<Return>", opts)

-- Split
keymap.set("n", "ss", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)

-- ===============================
--         SPECIAL COMMANDS
-- ===============================

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- New line without auto-comment
keymap.set("n", "<Leader>o", "o<Esc>^Da", opts)
keymap.set("n", "<Leader>O", "O<Esc>^Da", opts)

-- Simplified version
keymap.set("n", "<leader>o", "o<ESC>", { silent = true, desc = "Create New Line Below" })
keymap.set("n", "<leader>O", "O<ESC>", { silent = true, desc = "Create New Line Above" })

-- Jumplist
keymap.set("n", "<C-m>", "<C-i>", opts)

-- Close buffer
keymap.set({ "n", "v" }, "<leader>x", "<ESC>:q<CR>", { desc = "Close" })

-- Change working dir
keymap.set("n", "<leader>cw", "<cmd>cd %:p:h <CR>", { desc = "Set as working Dir" })
keymap.set("n", "<leader>cW", "<cmd>lcd %:p:h <CR>", { desc = "Set local working Dir" })

-- ===============================
--           LSP / DIAG
-- ===============================

keymap.set("n", "<C-j>", function()
	vim.diagnostic.goto_next()
end, opts)

keymap.set("n", "<leader>]", function()
	vim.diagnostic.goto_next()
end, { desc = "Go to Next Diagnostic" })

keymap.set("n", "<leader>[", function()
	vim.diagnostic.goto_prev()
end, { desc = "Go to Previous Diagnostic" })

-- Toggle inlay hints
keymap.set("n", "<leader>i", function()
	vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())
end, { desc = "Toggle inlay_hint" })

-- ===============================
--         PLUGIN MAPPINGS
-- ===============================

-- Replace hex with HSL
keymap.set("n", "<leader>r", function()
	require("craftzdog.hsl").replaceHexWithHSL()
end)

-- Toggle autoformat
vim.api.nvim_create_user_command("ToggleAutoformat", function()
	require("craftzdog.lsp").toggleAutoformat()
end, {})

-- Save with root permission
vim.api.nvim_create_user_command("W", "w !pkexec tee > /dev/null %", {})
