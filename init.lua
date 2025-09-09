-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("lazy").setup({
  {
    "wakatime/vim-wakatime",
    lazy = false,
  },

  -- miejsce na pluginy !!!
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
  },
})

return {
  "~/.config/nvim/lua/sidebar",
  config = function()
    require("sidebar").setup()
    vim.api.nvim_create_user_command("SidebarToggle", function()
      require("sidebar").toggle()
    end, {})
  end,
}
