local M = {}

M.disabled = {
  n = {
    ["<C-n>"] = "",
    ["<C-s>"] = "",
    ["<leader>x"] = "",
    ["<TAB>"] = "",
    ["<S-TAB>"] = ""
  }
}

M.general = {
  n = {
    ["<leader>q"] = {
      function()
        require("nvchad_ui.tabufline").close_buffer()
      end
    }, -- quit file
    ["<leader>w"] = { "<cmd> w <CR>"}, -- save file
    ["gt"] = {
      function()
        require("nvchad_ui.tabufline").tabuflineNext()
      end
    }, -- go to next tab
    ["gT"] = {
      function()
        require("nvchad_ui.tabufline").tabuflinePrev()
      end
    }, -- go to prev tab
    ["<leader>l"] = {
      function()
        require("nvchad_ui.tabufline").move_buf(1)
      end
    },
    ["<leader>h"] = {
      function()
        require("nvchad_ui.tabufline").move_buf(-1)
      end
    },
    ["<leader>s"] = { "<Plug>(easymotion-s2)" }
  }
}

M.nvimtree = {
  n = {
    ["<leader>nt"] = { "<cmd> NvimTreeToggle <CR>", "toggle nvimtree" }
  }
}

return M
