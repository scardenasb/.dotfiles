vim.opt.list = true
vim.opt.listchars:append("eol:↴") -- ↴⁊⁋♪¬ɿ↙↧↠ ↞↚↓↯↷↰↩ﬕ﬋")
--
require("indent_blankline").setup({
	show_current_context_start = true,
	space_char_blankline = " ",
	show_current_context = true,
	char_list = {
		"|",
		"¦",
		"┆",
		"┊",
		"",
		-- '.'    -- <- looking for a good 6th char
	},
})
