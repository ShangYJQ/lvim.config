-- add open nvimtree action
lvim.autocommands = {
  {
    'VimEnter',
    {
      pattern = { '*' },
      command = 'Neotree toggle'
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
