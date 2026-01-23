vim.opt.rtp:prepend(vim.fn.stdpath("data") .. "/lazy/lazy.nvim")

require("lazy").setup({
  -- Wakatime plugin
  { "wakatime/vim-wakatime", lazy = false },

  -- Catppuccin colorscheme
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        flavour = "mocha", -- Also available: latte, frappe, macchiato
        transparent_background = true,
      })
      vim.cmd.colorscheme("catppuccin")
    end
  }
})

vim.cmd [[
  highlight Normal guibg=none
  highlight NonText guibg=none
  highlight Normal ctermbg=none
  highlight NonText ctermbg=none
]]

