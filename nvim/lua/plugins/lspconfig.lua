return {
	"neovim/nvim-lspconfig",
	init = function()
		--global keymaps
		-- vim.keymap.set("n", "<leader>dj", vim.diagnostics.goto_next)
		-- vim.keymap.set("n", "<leader>dk", vim.diagnostics.goto_prev)

		vim.api.nvim_create_autocmd('LspAttach', {
			group = vim.api.nvim_create_augroup('UserLspConfig', {}),
			callback = function(ev)
				-- Buffer local mappings.
				-- See :help vim.lsp.* for documentation on any of the below functions
				local opts = { buffer = ev.buf }
				vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
				vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
				vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
				vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
				vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
				vim.keymap.set('n', '<leader>D', vim.lsp.buf.type_definition, opts)
				vim.keymap.set('n', '<leader>r', vim.lsp.buf.rename, opts)
				vim.keymap.set('n', '<leader>f', function()
					vim.lsp.buf.format { async = true }
				end, opts)
			end,
		})
	end,
	config = function()
		local capabilities = require('cmp_nvim_lsp').default_capabilities()
		require "lspconfig".pyright.setup {
			capabilities = capabilities
		}
		require "lspconfig".clangd.setup {
			capabilities = capabilities
		}
		require "lspconfig".lua_ls.setup {
			capabilities = capabilities
		}
		require "lspconfig".tsserver.setup {
			capabilities = capabilities
		}
	end,
}
