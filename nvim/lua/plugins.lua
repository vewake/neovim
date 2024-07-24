-- ~/.config/nvim/lua/plugins.lua

-- Ensure you return a table of your plugins
return {
  -- Other plugins can be listed here

  -- Add the toggleterm.nvim plugin configuration
  { 'akinsho/toggleterm.nvim', version = "*",       config = true },
  { "catppuccin/nvim",         name = "catppuccin", priority = 1000 },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "clangd"
      }
    }
  },

}
