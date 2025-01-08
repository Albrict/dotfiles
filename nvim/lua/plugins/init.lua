return {
    { "roobert/surround-ui.nvim" },
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.8',
          dependencies = { 'nvim-lua/plenary.nvim' }
    },
    {
      "nvim-tree/nvim-tree.lua",
      version = "*",
      lazy = false,
      dependencies = {
        "nvim-tree/nvim-web-devicons",
      },
      config = function()
        require("nvim-tree").setup {}
      end,
    },
    {   
        'akinsho/bufferline.nvim', version = "*",
        dependencies = 'nvim-tree/nvim-web-devicons'
    },
    { "tiagovla/scope.nvim" },
    { "bluz71/vim-moonfly-colors", name = "moonfly", lazy = false, priority = 1000 },

    {
      "dhananjaylatkar/cscope_maps.nvim",
      dependencies = {
        "nvim-telescope/telescope.nvim", -- optional [for picker="telescope"]
        "ibhagwan/fzf-lua", -- optional [for picker="fzf-lua"]
        "echasnovski/mini.pick", -- optional [for picker="mini-pick"]
      },
      opts = {},
    },

    {
        "lewis6991/gitsigns.nvim",
        opts = {},
    },
    {
        "famiu/bufdelete.nvim"
    },
    {
        "zekzekus/menguless"
    },
}
