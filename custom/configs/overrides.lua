local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "c",
    "cpp",
    "rust",
    "xml",
    "json",
    "toml",
    "markdown",
    "markdown_inline",
  },
  indent = {
    enable = true,
    -- disable = {
    --   "python"
    -- },
  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",

    -- other format
    "prettier",

    -- c/cpp stuff
    "clangd",
    "clang-format",

    -- rust
    "rust-analyzer",
    -- json
    "json-lsp",
    -- xml
    "lemminx",
    -- python
    "pyright",
    -- bash
    "bash-language-server",
    -- cmake
    "cmake-language-server",
    -- sql
    "sqlls",
    -- assermbly
    "asm-lsp",
    -- latex
    "ltex-ls",
  },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

M.cmp = {
    sources = {
    -- other sources
    {
      name = "dictionary",
      keyword_length = 2,
    },
  },
}

return M
