require("core.keymaps")
require("core.plugins")
require("core.plugin_config")

vim.wo.number = true
vim.api.nvim_create_user_command("DiagnosticToggle", function()
	local config = vim.diagnostic.config
	local vt = config().virtual_text
	config {
		virtual_text = not vt,
		underline = not vt,
		signs = not vt,
	}
end, { desc = "toggle diagnostic" })

vim.bo.textwidth = 0
vim.wo.wrap = false
