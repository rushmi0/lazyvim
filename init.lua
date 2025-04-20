if vim.loader then
	vim.loader.enable()
end

_G.dd = function(...)
	require("util.debug").dump(...)
end
vim.print = _G.dd

if vim.g.neovide then
	vim.o.guifont = "ComicShannsMono Nerd Font Mono:h16"
end
require("config.lazy")
