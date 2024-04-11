local plugins = {
  {
    "jose-elias-alvarez/null-ls.nvim",
    event = "VeryLazy",
    opts = function ()
      return require "custom.configs.null-ls"
    end,
  },
  {
    'junegunn/goyo.vim'
  },
  {
    'godlygeek/tabular'
  },
  {
    'preservim/vim-markdown'
  },
  {
    'itchyny/lightline.vim'
  },
  {
    "rust-lang/rust.vim",
    ft = "rust",
    init = function()
      vim.g.rustfmt_autosave = 1
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function ()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "clangd",
        "clang-format",
        "pyright",
        "ruff",
        "mypy",
        "rust-analyzer",
        "gopls",
      }
    }
  }
}
return plugins
