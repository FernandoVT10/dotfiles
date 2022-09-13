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
        require("core.utils").close_buffer()
      end
    }, -- quit file
    ["<leader>w"] = { "<cmd> w <CR>"}, -- save file
    ["gt"] = {
      function()
        require("core.utils").tabuflineNext()
      end
    }, -- go to next tab
    ["gT"] = {
      function()
        require("core.utils").tabuflinePrev()
      end
    } -- go to prev tab
  }
}

M.nvimtree = {
  n = {
    ["<leader>nt"] = { "<cmd> NvimTreeToggle <CR>", "toggle nvimtree" }
  }
}

return M
