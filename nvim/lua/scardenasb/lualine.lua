local status_ok, lualine = pcall(require, "lualine")
if not status_ok then
	return
end

local status_gps_ok, gps = pcall(require, "nvim-gps")
if not status_gps_ok then
	return
end

local hide_in_width = function()
	return vim.fn.winwidth(0) > 10
end

-- local icons = require "scardenasb.icons"

local mode = {
	"mode",
	color = { gui = "bold" },
	icon_enabled = true,
	icon = { "🛸" },
	fmt = function(str)
		return str
	end,
}

local branch = {
	"branch",
	icons_enabled = true,
	icon = { " ", color = { fg = "#f34f29" } },
	color = { bg = "#ffffff", fg = "#3d2d00", gui = "bold" },
}

local diagnostics = {
	"diagnostics",
	sources = { "nvim_lsp" },
	sections = { "error", "warn", "info", "hint" },
	symbols = { error = " ", warn = "  ", info = "  ", hint = "  " },
	update_in_insert = true,
	always_visible = false,
}

local nvim_gps = function()
	local gps_location = gps.get_location()
	if gps_location == "error" then
		return ""
	else
		return gps.get_location()
	end
end

local diff = {
	"diff",
	padding = { left = 0, right = 0 },
	diff_color = {
		added = { fg = "#1abc9c", gui = "" },
		modified = { fg = "#e0af68", gui = "" },
		removed = { fg = "#db4b4b", gui = "" },
	},
	symbols = { added = "  ", modified = "  ", removed = "  " },
	cond = hide_in_width,
}

local filesize = {
	"filesize",
	icon = { "💾" },
	padding = { left = 2, right = 1 },
}

local encoding = {
	"encoding",
	padding = { left = 1, right = 1 },
}

local fileformat = {
	"fileformat",
	padding = { left = 1, right = 1 },
	colored = true,
	symbols = {
		unix = "LF",
		dos = "CRLF",
		mac = "LF",
	},
}

local filetype = {
	"filetype",
	padding = { left = 1, right = 1 },
}

-- TODO: looking for a function to get the current time but in real time and in every mode
local datetime = function()
	local mode_ = vim.api.nvim_get_mode().mode
	while mode_ ~= "nil" do
		return vim.fn.strftime("｢%H:%M｣  %d-%b")
		-- return vim.loop.fs_lchown(vim.fn.strftime("%H:%M"))
	end
end

local tab_size = function()
	return "Spaces:" .. vim.api.nvim_buf_get_option(0, "shiftwidth")
end

local location = {
	"location",
	padding = { left = 1, right = 1 },
}

local progress = {
	"progress",
	padding = { left = 1, right = 1 },
	color = { gui = "bold" },
}

-- local scrollbar = {
--   function()
--     local current_line = vim.fn.line "."
--     local total_lines = vim.fn.line "$"
--     local chars = { " ", "▁", "▂", "▃", "▄", "▅", "▆", "▇", "█" }
--     local line_ratio = current_line / total_lines
--     local index = math.ceil(line_ratio * #chars)
--     return chars[index]
--   end,
--   padding = { left = 0, right = 0 },
-- }

-- TODO: looking for a function to get current active server
--local client = function()
-- return vim.fn.serverlist(vim.lsp.buf_get_clients())
-- local b = vim.lsp.buf_get_clients().client
-- return vim.api.nvim_get_current_buf(b)
--end

lualine.setup({
	options = {
		icons_enabled = true,
		theme = "mars",
		component_separators = { left = "", right = "" },
		section_separators = { left = "", right = "" },
		disabled_filetypes = { "alpha", "dashboard", "toggleterm" },
		always_divide_middle = true,
		globalstatus = true,
	},
	sections = {
		lualine_a = { mode },
		lualine_b = { branch, diagnostics },
		lualine_c = {
			{ nvim_gps, cond = hide_in_width },
		},
		lualine_x = { diff },
		lualine_y = { filesize, encoding, fileformat, filetype, datetime, tab_size, location },
		lualine_z = { progress },
	},
	inactive_sections = {
		lualine_a = {},
		lualine_b = {},
		lualine_c = {},
		lualine_x = { "location" },
		lualine_y = {},
		lualine_z = {},
	},
	tabline = {},
	extensions = { "nvim-tree" },
})
