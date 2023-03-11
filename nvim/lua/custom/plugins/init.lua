return {
  ["williamboman/mason.nvim"] = {
    override_options = {
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
      }
    }
  },
  ["nvim-tree/nvim-tree.lua"] = {
    override_options = {
      actions = {
        open_file = {
          quit_on_open = true
        }
      }
    }
  },
  ["iamcco/markdown-preview.nvim"] = {
    run = function() vim.fn["mkdp#util#install"]() end
  },
  ["neovim/nvim-lspconfig"] = {
    config = function()
      require("plugins.configs.lspconfig")
      require("custom.plugins.lspconfig")
    end
  },
  ["goolord/alpha-nvim"] = {
    disable = false,
    cmd = "Alpha",
  },
  ["easymotion/vim-easymotion"] = {}
}
