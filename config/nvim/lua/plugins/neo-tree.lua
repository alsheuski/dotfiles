return {
	{

		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			-- "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
			"MunifTanjim/nui.nvim",
			-- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
		},
		opts = {
			enable_git_status = false,
			enable_diagnostics = false,
			filesystem = {
				filtered_items = {
					visible = true,
					hide_dotfiles = false,
				},
			},
			file_size = {
				enabled = true,
				required_width = 24, -- min width of window required to show this column
			},
			window = {
				mapping_options = {
					noremap = true,
					nowait = true,
				},
				mappings = {
					["o"] = { "open", nowait = true },
					["oc"] = "noop",
					["od"] = "noop",
					["og"] = "noop",
					["om"] = "noop",
					["on"] = "noop",
					["os"] = "noop",
					["ot"] = "noop",
				},
			},
		},
	},
}
