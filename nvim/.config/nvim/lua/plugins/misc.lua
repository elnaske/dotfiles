return {
    {
	'windwp/nvim-autopairs', -- auto-close brackets
	event = "InsertEnter",
	config = true
	-- use opts = {} for passing setup options
	-- this is equivalent to setup({}) function
    },
    {
	"lukas-reineke/indent-blankline.nvim",
	main = "ibl",
	---@module "ibl"
	---@type ibl.config
	opts = {},
    },
}
