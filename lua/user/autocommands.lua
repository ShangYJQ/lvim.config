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
