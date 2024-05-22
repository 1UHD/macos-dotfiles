return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  opts = {
	view = {
		width = 30,
	}
  },
  keys = {
	{"<C-t>", "<Cmd>NvimTreeToggle<CR>", desc = "Toggle file tree"}
  } 
}
