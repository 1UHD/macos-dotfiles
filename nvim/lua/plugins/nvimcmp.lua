return {
	"hrsh7th/nvim-cmp",
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-path",
		"saadparwaiz1/cmp_luasnip",
		"L3MON4D3/LuaSnip"
	},
	version = false,
	event = "InsertEnter",
	opts = function()
		local cmp = require("cmp")
		local defaults = require("cmp.config.default")()
		return {
			completion = {
				completeopt = "menu,noselect,menuone,noinsert",
			},
			snippet = {
              expand = function(args)
                require("luasnip").lsp_expand(args.body)
              end,
            },
			mapping = cmp.mapping.preset.insert({
              ["<C-n>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
              ["<C-p>"] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
              ["<C-b>"] = cmp.mapping.scroll_docs(-4),
              ["<C-f>"] = cmp.mapping.scroll_docs(4),
              ["<C-Space>"] = cmp.mapping.complete(),
              ["<C-e>"] = cmp.mapping.abort(),
              ["<CR>"] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set select to false to only confirm explicitly selected items.
              ["<S-CR>"] = cmp.mapping.confirm({
                behavior = cmp.ConfirmBehavior.Replace,
                select = true,
              }), -- Accept currently selected item. Set select to false to only confirm explicitly selected items.
            }),
			sources = cmp.config.sources({
              { name = "path" },
              { name = "nvim_lsp" },
              { name = "luasnip" },
              { name = "buffer" },
            }),
            sorting = defaults.sorting,
		}
	end
}
