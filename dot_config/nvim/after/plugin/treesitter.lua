require'nvim-treesitter.configs'.setup {
  ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "bash", "cmake", "cpp", "dockerfile", "glsl", "html", "json", "markdown", "python", "javascript", "typescript", "rust", "haskell", "zig" },
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
  },
}
