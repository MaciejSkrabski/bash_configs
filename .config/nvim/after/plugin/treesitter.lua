local vim = vim
local opt = vim.opt

vim.api.nvim_create_autocmd({"BufEnter","BufAdd","BufNew","BufNewFile","BufWinEnter"}, {
    group = vim.api.nvim_create_augroup("TS_FOLD_WORKAROUND", {}),
    callback = function()
        vim.opt.foldmethod = "expr"
        vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
    end
})

require'nvim-treesitter.configs'.setup {
    ensure_installed = { "c", "lua", "vim", "query", "python"},
    highlight = {enable=true},
}

opt.foldenable = false
