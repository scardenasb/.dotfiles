require("nvim-tree").setup({
  disable_netrw = true,
  hijack_cursor = true,
  hijack_netrw = true,
  update_cwd = true,
  open_on_tab = false,
  sort_by = "name",
  ignore_ft_on_setup = { "dashboard" },
  hijack_directories = {
    enable = true,
    auto_open = true,
  },
  view = {
    hide_root_folder = true,
    width = 35,
    number = false,
    mappings = {
      custom_only = false,
      list = {
        { key = "s", action = "vsplit" },
        { key = "n", action = "split" },
        { key = "r", action = "rename" },
        { key = "+", action = "dir_down" },
        { key = "-", action = "dir_up" },
      },
    },
  },
  update_focused_file = {
    enable = true,
    update_cwd = false,
  },
  git = {
    enable = false,
    ignore = false,
    timeout = 200,
  },
  renderer = {
    indent_markers = {
      enable = true,
      icons = {
        corner = "└ ",
        edge = "│ ",
        none = "  ",
      },
    },
    icons = {
      webdev_colors = true,
      git_placement = "before",
    }
  },
  diagnostics = {
    enable = true,
    show_on_dirs = true,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    },
  },
  actions = {
    open_file = {
      quit_on_open = false,
      resize_window = false,
    },
  },
})
