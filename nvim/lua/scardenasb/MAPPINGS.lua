local mapper = function(mode, key, result)
	vim.api.nvim_set_keymap(mode, key, result, { noremap = true, silent = true })
end

-- Reload init file
mapper("n", "<F5>", ":source %<CR>")
mapper("v", "<F5>", ":source %<CR>")

-- Format (formatter.lua)
mapper("n", "<leader>fo", ":Format<CR>")

-- To fast single/double quote words
mapper("n", "<leader>cs", "ciw''<esc>P")
mapper("n", "<leader>cd", 'ciw""<esc>P')

-- Save and quit easy
mapper("n", "<leader>w", ":w<CR>")
mapper("n", "<leader>q", ":q<CR>")
mapper("n", "zz", ":quitall<CR>")

mapper("n", "zf", "v%zf")

-- Resize panes inside nvim
mapper("n", "<leader><right>", ":vertical resize +5<CR>")
mapper("n", "<leader><left>", ":vertical resize -5<CR>")
mapper("n", "<leader><up>", ":resize +5<CR>")
mapper("n", "<leader><down>", ":resize -5<CR>")

-- Go to normal mode
mapper("i", "kj", "<esc>")

-- Hop (easymotion), HopWord can be useful too
mapper("n", "s", ":HopWord<CR>")
mapper("n", "2s", ":HopChar2<CR>")

-- Do nothing with F1
mapper("n", "<F1>", "<nop>")
mapper("i", "<F1>", "<nop>")

-- Copy your current file path
mapper("n", "<leader>kp", ":let @*=expand('%')<CR>")

-- Duplicate line
mapper("n", "dl", ":t.<CR>")

-- To add : or ; at the eof
mapper("n", "<leader>;", "$a:<esc>")

-- To move lines
mapper("n", "<A-j>", ":m .+1<CR>")
mapper("n", "<A-k>", ":m .-2<CR>")
mapper("i", "<A-j>", "<esc>:m .+1<CR>==gi") -- '==' re=indents the line to suit its new position
mapper("i", "<A-k>", "<esc>:m .-2<CR>==gi")
mapper("v", "<A-j>", ":m '>+1<CR>gv=gv") -- 'gv' in visual mode reselects the last visual block and '=' re-indents that block
mapper("v", "<A-k>", ":m '<-2<CR>gv=gv")

-- Telescope
mapper("n", "<leader>ff", "<cmd>lua require('telescope.builtin').find_files()<CR>")
mapper("n", "<leader>fg", "<cmd>lua require('telescope.builtin').live_grep()<CR>")
mapper("n", "<leader>fb", "<cmd>lua require('telescope.builtin').buffers()<CR>")

-- Format lsp
mapper("n", "<leader>f", ":lua vim.lsp.buf.formatting_sync()<CR>")

-- NvimTree
mapper("n", "<F2>", ":NvimTreeToggle<CR>")
mapper("n", "<F2>", ":NvimTreeToggle<CR>")
mapper("n", "<leader>n", ":NvimTreeFocus<CR>")

-- Splits navigation
mapper("n", "<leader>h", "<C-w>h")
mapper("n", "<leader>j", "<C-w>j")
mapper("n", "<leader>k", "<C-w>k")
mapper("n", "<leader>l", "<C-w>l")

-- Clear search results
mapper("n", "//", ":noh<CR>")

-- Buffers control
mapper("n", "<leader>bc", ":bw<CR>")
mapper("n", "<tab>", ":bn<CR>")
mapper("n", "<s-tab>", ":bp<CR>")

-- Tabs control
mapper("n", "<leader>t", ":tabn<CR>")
mapper("n", "td", ":tabclose<CR>")

-- Move in insert mode with: h=  ,t=  ,n=  ,c=  (Good for small keyboards, htnc is for Dvorak; jkli is for Qwerty)
mapper("i", "<a-h>", "<Left>")
mapper("i", "<a-t>", "<Down>")
mapper("i", "<a-n>", "<Right>")
mapper("i", "<a-c>", "<Up>")

-- Move lil faster (TODO: look for another key maybe)
mapper("n", "<C-t>", "2<C-e>") --down
mapper("n", "<C-c>", "2<C-y>") -- up

-- Diag Telescope
mapper("n", "<leader>td", "<cmd>Telescope diagnostics<CR>")
