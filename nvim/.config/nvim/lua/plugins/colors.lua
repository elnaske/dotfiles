local function enable_transparency()
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
    vim.api.nvim_set_hl(0, "NvimTreeNormal", { bg = "none" })
end
return {
	   {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	config = function()
	    vim.cmd.colorscheme "catppuccin-mocha"
	    enable_transparency()
	end
	   },
	--    {
	--      "uZer/pywal16.nvim",
	--      -- lazy = false,
	--      priority = 1000,
	--      config = function()
	-- require("pywal16").setup()
	-- vim.cmd.colorscheme("pywal16")
	--      end,
	--    },
    {
	"nvim-lualine/lualine.nvim",
	dependencies = {
	    "nvim-tree/nvim-web-devicons",
	},
	opts = {
	    -- theme = "pywal16-nvim"
	    theme = "catppuccin-mocha"
	},
    },
    {
      "norcalli/nvim-colorizer.lua",
      config = function()
	require("colorizer").setup({
	  "*",
	}, {
	  RGB = true,
	  RRGGBB = true,
	  names = true,
	  RRGGBBAA = true,
	  rgb_fn = true,
	  hsl_fn = true,
	  css = true,
	  css_fn = true,
	})
      end,
    }
}
