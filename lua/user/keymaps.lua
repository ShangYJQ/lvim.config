-- keymaps

-- I dont want to use <Esc> too ofen qaq
lvim.keys.normal_mode["<C-q>"] = ":q!<CR>"
lvim.keys.insert_mode["<C-q>"] = "<Esc>"

lvim.keys.normal_mode["<C-s>"] = ":w<CR>"

lvim.keys.normal_mode["<C-z>"] = ":undo<CR>"

lvim.keys.normal_mode["<C-c>"] = "Y<CR>"

lvim.keys.normal_mode["<C-v>"] = "p<CR>"

lvim.keys.normal_mode["<C-x>"] = "D<CR>"

lvim.keys.normal_mode["<C-k>"] = ":bn<CR>"
lvim.keys.normal_mode["<C-j>"] = ":bp<CR>"

lvim.keys.normal_mode["<A-m>"] = ":FineCmdline<CR>"

lvim.builtin.which_key.mappings["r"] = {
  "<cmd>Autorun<CR>", "Run your code",
}
