local status_ok, signature = pcall(require, "lsp_signature")
if not status_ok then
  return
end

local icons = require "scardenasb.icons"

local cfg = {
    debug = false,
    verbose = false,
    bind = true,
    doc_lines = 15, -- API Comments?
    floating_window = false,
    floating_window_above_cur_line = true,
    floating_window_off_x = 1,
    floating_window_off_y = 1,
    fix_pos = true,
    hint_enable = true,
    hint_prefix = icons.misc.Squirrel .. " ",
    hint_scheme = "Comment",
    hi_parameter = "LspSignatureActiveParameter",
    max_height = 15,
    max_width = 120,
    handler_opts = {
      border = "rounded"
    },
    always_trigger = false,
    auto_close_after = nil,
    extra_trigger_chars = {},
    zindex = 200,
    padding = '',
    transparency = nil,
    shadow_blend = 10,
    shadow_guibg = 'Black',
    timer_interval = 100,
    toggle_key = nil,
}


signature.setup(cfg)
signature.on_attach(cfg)

