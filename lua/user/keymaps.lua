-- keymaps

-- I dont want to use <Esc> too ofen qaq
lvim.keys.normal_mode["<C-q>"] = ":q!<CR>"
lvim.keys.insert_mode["<C-q>"] = "<Esc>"

lvim.keys.normal_mode["<C-s>"] = ":w<CR>"

lvim.keys.normal_mode["<C-z>"] = ":undo<CR>"

lvim.keys.normal_mode["<C-c>"] = "Y<CR>"

lvim.keys.normal_mode["<C-v>"] = "p<CR>"

lvim.keys.normal_mode["<C-x>"] = "dd<CR>"

lvim.keys.normal_mode["<C-k>"] = ":BufferLineCycleNext<CR>"
lvim.keys.normal_mode["<C-j>"] = ":BufferLineCyclePrev<CR>"

lvim.builtin.which_key.mappings["r"] = {
  "<cmd>Autorun<CR>", "Run your code",
}

lvim.builtin.which_key.mappings["R"] = {
  "<cmd>Autodap<CR>", "Dap your cpp code",
}

lvim.builtin.which_key.mappings["e"] = {
  "<cmd>Neotree toggle<CR>", "Explorer",
}
