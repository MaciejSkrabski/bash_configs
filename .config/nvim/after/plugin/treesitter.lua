local langs = {
  'bash',
  'c',
  'dockerfile',
  'git_config',
  'git_rebase',
  'gitattributes',
  'gitcommit',
  'gitignore',
  'gpg',
  'hcl',
  'html',
  'http',
  'jq',
  'json',
  'lua',
  'luadoc',
  'markdown',
  'nginx',
  'passwd',
  'python',
  'query',
  'regex',
  'requirements',
  'rust',
  'robots_txt',
  'sql',
  'ssh_config',
  'terraform',
  'tmux',
  'toml',
  'vim',
  'vimdoc',
  'xml',
  'yaml',
  'zsh'
}
require('nvim-treesitter').install(langs)

vim.api.nvim_create_autocmd('FileType', {
  pattern = langs,
  callback = function()
    vim.treesitter.start()                                    -- highlighting
    -- vim.wo.foldexpr = 'v:lua.vim.treesitter.foldexpr()'     -- folds
    vim.wo.foldmethod = 'expr'
    vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()" -- indentation
  end,
})
