return {
  ["williamboman/mason.nvim"] = {
    override_options = {
      ensure_installed = {
        -- lua stuff
        "lua-language-server",
        "stylua",

        -- web dev
        "html-lsp",
        "css-lsp",
        "typescript-language-server",
        "vue-language-server",
        "json-lsp",
        "emmet-ls"
      }
    }
  },
  ["kyazdani42/nvim-tree.lua"] = {
    override_options = {
      actions = {
        open_file = {
          quit_on_open = true
        }
      }
    }
  }
}
