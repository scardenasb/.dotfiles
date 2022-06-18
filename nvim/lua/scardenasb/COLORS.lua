-- Theme TOKYONIGHT
vim.o.termguicolors = true
vim.opt.background = "dark"
vim.g.tokyonight_style = "night"
vim.g.tokyonight_italic_comments = false
vim.g.tokyonight_italic_keywords = false
vim.g.tokyonight_dark_float = false
vim.g.tokyonight_lualine_bold = false
vim.g.tokyonight_colors = { border = "#f4ecc0", bg_sidebar = "#1a1b26", bg_popup = "#2a313e", border_highlight = "#efefef" }
vim.cmd "colorscheme tokyonight"




require("colorizer").setup()

