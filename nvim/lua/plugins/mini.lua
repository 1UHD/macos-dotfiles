return {
	{
		"echasnovski/mini.comment",
        event = "VeryLazy",
        config = function() 
            require("mini.comment").setup()
        end,
	},
	{
		"echasnovski/mini.pairs",
        event = "VeryLazy",
        config = function() 
            require("mini.pairs").setup()
        end
	},
}
