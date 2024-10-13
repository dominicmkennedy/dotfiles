local lspconfig = require 'lspconfig'

lspconfig.hls.setup({
  cmd = { '/home/dom/.ghcup/bin/haskell-language-server-wrapper', "--lsp" },
  -- cmd = { 'nix-shell', '--command', 'haskell-language-server --lsp' },
  filetypes = { 'haskell', 'lhaskell', 'cabal' },
})

lspconfig.racket_langserver.setup{}

-- lspconfig.grammarly.setup({
--   init_options = { clientId = "client_BaDkMgx4X19X9UxxYRCXZo" },
--   cmd = { "node-16", "/home/dom/.local/share/nvim/mason/bin/grammarly-languageserver", "--stdio" },
-- })

local lsp = require("lsp-zero")

lsp.preset("recommended")

lsp.nvim_workspace()

--local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_autopairs = require('nvim-autopairs.completion.cmp')
local cmp = require('cmp')
cmp.event:on(
  'confirm_done',
  cmp_autopairs.on_confirm_done()
)
cmp.setup({
  mapping = { ['<CR>'] = cmp.mapping.confirm({ select = true }),
  }
})


lsp.set_preferences({})

lsp.on_attach(function(client, bufnr)
  local opts = { buffer = bufnr, remap = false }

  vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
  vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
  vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
  vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
  vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
  vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
  --vim.keymap.set("n", "<leader>ca", function() vim.lsp.buf.code_action() end, opts)
  vim.keymap.set("n", "<leader>ca", '<cmd>CodeActionMenu<CR>', { noremap = true, silent = true })
  vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
  vim.keymap.set("n", "<leader>rn", function() vim.lsp.buf.rename() end, opts)
  vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
  vim.keymap.set("n", "<leader>f", function() vim.lsp.buf.format { async = true } end, { noremap = true, silent = true })
end)


lsp.setup({})

vim.diagnostic.config({
  virtual_text = true
})
