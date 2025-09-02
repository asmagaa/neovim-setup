return {
  dir = "~/Documents/GitHub/sidebar.nvim",
  config = function()
    require("sidebar").setup()
    vim.api.nvim_create_user_command("SidebarToggle", function()
      require("sidebar").toggle()
    end, {})
  end,
}

