local format = function()
    vim.lsp.buf.format({async = true})
end
return {
    {
	"neovim/nvim-lspconfig",
	config = function()
	    -- language servers
	    vim.lsp.enable("ty") -- python
	    vim.lsp.enable("clangd") -- c
	    vim.lsp.enable("lua_ls")
	    vim.lsp.config('lua_ls', {
	      on_init = function(client)
		if client.workspace_folders then
		  local path = client.workspace_folders[1].name
		  if
		    path ~= vim.fn.stdpath('config')
		    and (vim.uv.fs_stat(path .. '/.luarc.json') or vim.uv.fs_stat(path .. '/.luarc.jsonc'))
		  then
		    return
		  end
		end

		client.config.settings.Lua = vim.tbl_deep_extend('force', client.config.settings.Lua, {
		  runtime = {
		    version = 'LuaJIT',
		    path = {
		      'lua/?.lua',
		      'lua/?/init.lua',
		    },
		  },
		  -- Make the server aware of Neovim runtime files
		  workspace = {
		    checkThirdParty = false,
		    library = {
		      vim.env.VIMRUNTIME,
		      vim.api.nvim_get_runtime_file("lua/lspconfig", false)[1],
		    },
		  },
		})
	      end,
	      settings = {Lua = {}},
	    })

	    vim.lsp.config("rust-analyzer", {
		settings = {
		    ["rust-analyzer"] = {
			inlayHints = {
			    closingBraceHints = {
				enable = true,
				minLines = 25,
			    }
			}
		    }
		}

	    })

	    -- visual
	    vim.diagnostic.config(
		{
		    virtual_text = true,
		}
	    )
	    vim.lsp.inlay_hint.enable(true)

	    -- formatting
	    vim.keymap.set("n", "<leader>fm", format)
	    vim.api.nvim_create_autocmd("BufWritePre", {
		pattern = "*.rs",
		callback = format,
		}
	    )
	end,
    }
}
