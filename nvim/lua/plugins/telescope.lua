return {
    { 
        'nvim-telescope/telescope-fzf-native.nvim', 
        build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build',
    },
    {
        "nvim-telescope/telescope.nvim",
        event = "VeryLazy",
        dependencies = { 
            "nvim-lua/popup.nvim",
            "nvim-lua/plenary.nvim",
            "nvim-telescope/telescope-fzf-native.nvim"
        },
        opts = {
            pickers = {
                find_files = {
                    hidden = true
                }
            }
        },
        keys = {
            {"<leader>ff", ":Telescope find_files <cr>",  desc = "Telescope find files"},
            {"<leader>b", ":Telescope buffers <cr>",  desc = "Telescope buffers"}
        }
    },
}
