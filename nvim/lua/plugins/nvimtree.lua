return {
    "nvim-tree/nvim-tree.lua",
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    opts = {
        view = {
            width = 30,
        }
    },
    keys = {
        {"<C-t>", "<Cmd>NvimTreeToggle<CR>", desc="Toggle file tree"}
    }
}
