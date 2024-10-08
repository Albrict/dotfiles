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
}
