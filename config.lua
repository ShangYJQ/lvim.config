-- Creat by ShangYJQ QAQ
-- keymaps
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

-- set terminal
lvim.builtin["terminal"].shell = "/bin/bash"
lvim.builtin["terminal"].direction = "vertical"
lvim.builtin["terminal"].size = 31

lvim.colorscheme = "lunar"

lvim.format_on_save.enabled = true

-- set nvimtree
lvim.builtin.nvimtree.setup.renderer.icons.show.git = false
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.setup.view.width = 25


-- add open nvimtree action
lvim.autocommands = {
  {
    'VimEnter',
    {
      pattern = { '*' },
      command = 'NvimTreeToggle'
    }
  },
  {
    'VimEnter',
    {
      pattern = { '*' },
      command = 'wincmd p'
    }
  }
}

lvim.builtin.telescope.defaults.path_display = { 'truncate' }

lvim.builtin.treesitter.ensure_installed = {
  'bash',
  'c',
  'cpp',
  'javascript',
  'json',
  'lua',
  'python',
  'typescript',
  'tsx',
  'css',
  'rust',
  'java',
  'yaml',
}

lvim.builtin.treesitter.highlight.enabled = true

-- imporve the mason-registry download
lvim.builtin.mason.registries = { "github:mason-org/mason-registry@2025-02-05-tasty-liar" }

-- speed up the mason download of github
lvim.builtin.mason.github = { download_url_template = "https://051030.xyz/%s/releases/download/%s/%s" }

vim.opt.relativenumber = true

-- my user plugins
lvim.plugins = {
  {
    'VonHeikemen/fine-cmdline.nvim',
    dependencies = {
      { 'MunifTanjim/nui.nvim' }
    },
    config = function()
      require('fine-cmdline').setup()
    end
  },
  {
    "folke/flash.nvim",
    event = "VeryLazy",
    opts = {
      modes = {
        char = { enabled = false }
      }
    },
    keys = {
      { "/",     mode = { "n", "x", "o" }, function() require("flash").jump() end,       desc = "Flash" },
      { "<a-/>", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
    },
  }
}

require("nvim-treesitter.install").prefer_git = true
