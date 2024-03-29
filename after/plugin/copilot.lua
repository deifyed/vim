require("copilot").setup {
	suggestion = {
		enabled = true,
		auto_trigger = true,
		keymap = {
			accept = "<C-j>",
		}
	},
	server_opts_override = {
		trace = "verbose",
	},
	plugin_manager_path = vim.fn.expand("$HOME") .. '/.config/nvim/plugged',
	copilot_node_command = vim.fn.expand("$HOME") .. "/.local/lib/n/n/versions/node/16.18.0/bin/node"
}

require("copilot_cmp").setup {
	method = "getCompletionsCycling",
}
