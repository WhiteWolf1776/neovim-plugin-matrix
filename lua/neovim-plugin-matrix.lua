-- Main module for the Eisenhower Matrix plugin
local EM = {}

function EM.load_matrix()
	vim.cmd("e ~/EisenhowerMatrix/do.md")
	vim.cmd("split ~/EisenhowerMatrix/delegate.md")
	vim.cmd("vsplit ~/EisenhowerMatrix/eliminate.md")
	vim.cmd("wincmd k")
	vim.cmd("vsplit ~/EisenhowerMatrix/plan.md")
	vim.cmd("wincmd h")
end

function EM.setup(opts)
	opts = opts or {}
	vim.api.nvim_create_user_command("Matrix", EM.load_matrix(), {})
end
-- Return the module
