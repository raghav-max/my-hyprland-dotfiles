return{
  "neanias/everforest-nvim",
  version = false,
  background = "hard",
  lazy = false,
  priority = 1000, -- make sure to load this before all the other start plugins
  -- Optional; default configuration will be used if setup isn't called.
  config = function()
    require("everforest").setup({
      colors_override=function(palette)
        palette.bg1="#091213"
      end
    })
  end,
}
