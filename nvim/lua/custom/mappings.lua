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
        require("nvchad.tabufline").close_buffer()
      end
    }, -- quit file
    ["<leader>w"] = { "<cmd> w <CR>"}, -- save file
    ["gt"] = {
      function()
        require("nvchad.tabufline").tabuflineNext()
      end
    }, -- go to next tab
    ["gT"] = {
      function()
        require("nvchad.tabufline").tabuflinePrev()
      end
    }, -- go to prev tab
    ["<leader>l"] = {
      function()
        require("nvchad.tabufline").move_buf(1)
      end
    },
    ["<leader>h"] = {
      function()
        require("nvchad.tabufline").move_buf(-1)
      end
    },
    ["<leader>s"] = { "<Plug>(easymotion-s2)" },
    ["<leader>t"] = { ":TestNearest <CR>" },

    -- VIM TMUX NAVIGATOR
    ["<C-h>"] = { "<cmd> TmuxNavigateLeft <CR>", "Window Left" },
    ["<C-l>"] = { "<cmd> TmuxNavigateRight <CR>", "Window Right" },
    ["<C-j>"] = { "<cmd> TmuxNavigateDown <CR>", "Window Down" },
    ["<C-k>"] = { "<cmd> TmuxNavigateUp <CR>", "Window Up" },
  }
}

M.nvimtree = {
  n = {
    ["<leader>nt"] = { "<cmd> NvimTreeToggle <CR>", "toggle nvimtree" },
    ["<leader>tw"] = {
      function ()
        local pathToTest = vim.fn.expand("%");
        require("nvterm.terminal").send(
          "npm run test -w api -- --watch " .. pathToTest,
          "vertical"
        )
      end,
      "Run test file in watch mode"
    }
  }
}

return M
