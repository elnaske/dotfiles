require("config.options")
require("config.keybinds")
require("config.lazy")

require("nvim-tree").setup({
    actions = {
	open_file = {
	    quit_on_open = true,
	},
    },
})
