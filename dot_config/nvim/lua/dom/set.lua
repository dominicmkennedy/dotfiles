vim.g.mapleader = " "

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

--vim.opt.hlsearch = false
--vim.opt.incsearch = false

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 25

vim.opt.showcmd = true
vim.opt.showmatch = true
vim.opt.ignorecase = true
vim.opt.mouse = "v"
vim.opt.mouse = "a"
vim.opt.clipboard = "unnamedplus"
vim.opt.cursorline = true
vim.opt.ttyfast = true

vim.opt.cmdheight = 0
vim.opt.encoding = "utf-8"

vim.cmd([[
fun! SetupCommandAlias(from, to)
exec 'cnoreabbrev <expr> '.a:from
\ .' ((getcmdtype() is# ":" && getcmdline() is# "'.a:from.'")'
\ .'? ("'.a:to.'") : ("'.a:from.'"))'
endfun
call SetupCommandAlias("W", "w")
call SetupCommandAlias("Q", "q")
call SetupCommandAlias("WQ", "wq")
call SetupCommandAlias("Wq", "wq")
]])

vim.cmd [[highlight IndentBlanklineIndent1 guibg=#292e42 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent2 guibg=#24283b gui=nocombine]]

--vim.opt.list = true
--vim.opt.listchars:append "space:⋅"
--vim.opt.listchars:append "eol:↴"

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

--local cmp_autopairs = require('nvim-autopairs.completion.cmp')
--local cmp = require('cmp')
--cmp.event:on(
--  'confirm_done',
--  cmp_autopairs.on_confirm_done()
--)
--
--vim.cmd [[
--autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})
--]]
--todo more of t
--
--

