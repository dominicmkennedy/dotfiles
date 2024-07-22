require('dom.set')
require('dom.packer')

local augroup = vim.api.nvim_create_augroup

local AutoRmWhiteSpace = augroup('AutoRmWhiteSpace', {})
local autocmd = vim.api.nvim_create_autocmd
autocmd({"BufWritePre"}, {
    group = AutoRmWhiteSpace,
    pattern = "*",
    command = "%s/\\s\\+$//e",
})
