local plugins = {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        -- lua stuff
        "lua-language-server",
        "stylua",

        -- web dev
        "typescript-language-server",
        "vue-language-server",
        "emmet-ls",
        "eslint_d",

        -- python
        "python-lsp-server",

        -- rust
        "rust-analyzer",
      }
    }
  },
  {
    "nvim-tree/nvim-tree.lua",
    opts = {
      actions = {
        open_file = {
          quit_on_open = true
        }
      }
    }
  },
  {
    "iamcco/markdown-preview.nvim",
    build = function() vim.fn["mkdp#util#install"]() end,
    setup = function() vim.g.mkdp_browser = "brave-browser" end,
    lazy = false
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("plugins.configs.lspconfig")
      require("custom.configs.lspconfig")
    end
  },
  {
    "easymotion/vim-easymotion",
    lazy = false
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      indent = {
        enabled = true
      }
    }
  },
  {
    "rmagatti/auto-session",
    config = function ()
      require("auto-session").setup {
        log_level = "error"
      }
    end,
    lazy = false
  },
  {
    "rust-lang/rust.vim",
    lazy = false
  },
  {
    "vim-test/vim-test",
    lazy = false
  }
}

return plugins
