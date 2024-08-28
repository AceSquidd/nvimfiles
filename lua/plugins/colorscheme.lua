return {{
    "folke/tokyonight.nvim",
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1002, -- make sure to load this before all the other start plugins
    config = function()
      -- load the colorscheme here
      vim.cmd([[colorscheme tokyonight]])
    end,
  },
  {
    "neanias/everforest-nvim",
    version = false,
    lazy = false,
    priority = 1001, -- make sure to load this before all the other start plugins

    config = function()
        require("everforest").setup({})
        vim.cmd([[colorscheme everforest]])
    end,
  }
}