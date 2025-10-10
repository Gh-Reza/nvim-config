return {
  {
    "loctvl842/monokai-pro.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      -- Available filters: "classic", "pro", "octagon", "machine", "ristretto", "spectrum"
      filter = "pro",

      -- Enable transparent background
      transparent_background = false,

      -- Day/Night mode
      day_night = {
        enable = false,
        day_filter = "pro",
        night_filter = "machine",
      },

      -- Plugin integration - clear background for these plugins
      background_clear = {
        "float_win",
        "toggleterm",
        "telescope",
        "which-key",
        "renamer",
        "notify",
      },

      -- Incsearch highlight
      inc_search = "background",

      -- Custom background color
      background_color = "#000000",

      -- Keyword highlight underline
      keyword_highlight = "underline",

      -- Dev icons colors
      devicons = true,
    },
    config = function(_, opts)
      require("monokai-pro").setup(opts)
      vim.cmd.colorscheme("monokai-pro")
    end,
  },
}
