require("telescope").setup({
  defaults = {
    vimgrep_arguments = {
      "rg",
      "--color=never",
      "--no-heading",
      "--with-filename",
      "--line-number",
      "--column",
      "--smart-case",
    },
    selection_caret = "  ",
    initial_mode = "insert",
    selection_strategy = "reset",
    color_devicons = true,
    sen_env = { ["COLORTERM"] = "truecolor" },
    mappings = {
      i = {
        ["<a-c>"] = require "telescope.actions".move_selection_previous,
        ["<a-t>"] = require "telescope.actions".move_selection_next,
      },
    },
  },
  pickers = {
    find_files = {
      prompt_prefix = "📂 ",
    },
    builtin = {
      prompt_prefix = "🔭 ",
    },
    live_grep = {
      prompt_prefix = "🔎 ",
    },
    diagnostics = {
      prompt_prefix = "🚑 ",
    },
  },
})
