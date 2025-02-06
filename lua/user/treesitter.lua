-- some ts settings
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
require("nvim-treesitter.install").prefer_git = true
