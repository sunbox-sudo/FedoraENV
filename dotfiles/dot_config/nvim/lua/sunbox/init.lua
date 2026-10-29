require("sunbox.set")
require("sunbox.remap")
require("sunbox.lazy_init")

-- ts (tabstop)
-- Uses https://github.com/bahamas10/tabstop for change tabstops.
local indent_file = vim.fn.expand("~/.vimrc.indent")
if vim.fn.filereadable(indent_file) == 1 then
	vim.cmd("source " .. indent_file)
end

-- Easy mode
-- A easy mode for new vim triggerd by :Easy (for other pepole)
vim.api.nvim_create_user_command("Easy", function()
	vim.opt.insertmode = true
end, {})

-- folding regions
-- Enable treesitter folding (required for function folding)
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.foldenable = true
vim.opt.foldlevel = 99
vim.opt.foldlevelstart = 99
