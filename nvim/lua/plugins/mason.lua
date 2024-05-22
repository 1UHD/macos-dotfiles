return {
    {
        "williamboman/mason.nvim",
        enabled = true,
        config = function() 
            require("mason").setup()
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        dependencies = { "williamboman/mason.nvim"},
        opts = {
            ensure_installed = {
				"lua_ls", "pyright", "clangd"
            },
        },

    }
}
