vim.o.shell = "/usr/bin/bash"
vim.g.mapleader = " "
vim.g.python3_host_prog = "/mnt/c/python310/python.exe"

local options = {
	syntax = "on",
	cursorline = false, -- highlight the current line, slow down when scroll!
	signcolumn = "yes",
	mouse = "a", -- allow the mouse to be used in neovim
	showmatch = true, -- To highlight coincidences
	errorbells = false, -- To see error blinks
	hidden = false, -- To control ":w since last change" error
	showcmd = false, -- To show commands used
	backup = false, -- creates a backup file
	clipboard = "unnamedplus", -- allows neovim to access the system clipboard
	cmdheight = 1, -- space command line
	conceallevel = 0, -- so that `` is visible in markdown files
	fileencoding = "utf-8", -- the encoding written to a file
	pumheight = 10, -- pop up menu height
	showtabline = 2, -- always show tabs
	splitbelow = true, -- force all horizontal splits to go below current window
	splitright = true, -- force all vertical splits to go to the right of current window
	swapfile = false, -- creates a swapfile
	undofile = true, -- enable persistent undo
	writebackup = false, -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
	number = true, -- set numbered lines
	laststatus = 3, -- status bar 0=never; 1=only if you have more than 2 windows; 2=always
	relativenumber = true, -- set relative numbered lines, slow down when scroll but less than cursorline
	numberwidth = 5, -- set number column width {default 4}
	wrap = false, -- display lines as one long line
	scrolloff = 8, -- how many lines will be locked when you keep k or j pressed 5-10 good number
	sidescrolloff = 8, -- same as 👆 but to the side
	guifont = "JetBrainsMono NF:h11", -- the font used in graphical neovim applications
	modified = false,
	spell = false,
	foldcolumn = "auto:3",
	foldmethod = "manual",
	guicursor = "n-c-sm:block-blinkon1,v:block-blinkon0,i-ci-ve:ver25-blinkon1,r-cr-o:hor20",

	-- Speed
	ttimeoutlen = 0,
	ttyfast = true,
	timeoutlen = 300, -- time to wait for a mapped sequence to complete (in milliseconds)
	updatetime = 0, -- faster completion (4000ms default)

	-- Autoindent
	smartindent = true,
	autoindent = true,
	cpoptions = "I",
	smarttab = true,

	-- Searching
	hlsearch = true, -- highlight all matches on previous search pattern
	incsearch = true, -- incremental searching
	ignorecase = true, -- ignore case in search patterns
	smartcase = true, -- smart case
	showmode = false, -- we don't need to see things like -- INSERT -- anymore
}

for i, j in pairs(options) do
	vim.opt[i] = j
end

vim.opt.shortmess:append("c")

-- To set tabs accord to the current file
vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead", "FileType" }, {
	pattern = { "*.py", "*.json", "*.js" },
	callback = function()
		vim.schedule(function()
			vim.opt.tabstop = 4
			vim.opt.softtabstop = 4
			vim.opt.shiftwidth = 4
			vim.opt.textwidth = 150
			vim.opt.expandtab = true
			vim.opt.fileformat = "unix"
		end)
	end,
})

vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead", "FileType" }, {
	pattern = { "*.css", "*.bashrc", "*.lua" },
	callback = function()
		vim.schedule(function()
			vim.opt.tabstop = 2
			vim.opt.softtabstop = 2
			vim.opt.shiftwidth = 2
			vim.opt.expandtab = true
		end)
	end,
})

vim.api.nvim_create_autocmd({ "VimLeave" }, {
	callback = function()
		vim.cmd("set guicursor=a:hor25-blinkon1")
	end,
})

-- To auto format files, add only the ones that have a prettier installed (black and stylua in this case)
vim.api.nvim_create_autocmd({ "BufWritePost", "FileType" }, {
	pattern = { "*.py", "*.lua", "*.js" },
	callback = function()
		vim.cmd("FormatWrite")
	end,
})

-- To enable clipboard (not necessary in windows terminal wsl)
-- vim.g.clipboard = {
--   name = "win32yank-wsl",
--   copy = {
--     ["+"] = "win32yank.exe -i --crlf",
--     ["*"] = "win32yank.exe -i --crlf"
--   },
--   paste = {
--     ["+"] = "win32yank.exe -o --crlf",
--     ["*"] = "win32yank.exe -o --crlf"
--   },
--   cache_enable = 0,
-- }

vim.cmd("set whichwrap+=<,>,[,],h,l")
vim.cmd([[set iskeyword+=-]])
