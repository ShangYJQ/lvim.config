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
