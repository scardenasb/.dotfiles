local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
  return
end

configs.setup({
  ensure_installed = { "python", "html", "lua", "css", "javascript", "vim", "bash" },
  sync_install = true,
  highlight = {
    enable = true, -- Do not change
    use_languagetree = true,
    disable = { "html" },
    additional_vim_regex_highlighting = false,
  },
  autotag = {
    enable = true,
    filetypes = {
      "html", "htmldjango", "xml", "javascript", "typescript"
    },
  }
})

-- TODO: AutoCmd to TSUpdate once a day?
-- vim.api.nvim_create_autocmd("WinLeave", { command = [[TSUpdate]] })
