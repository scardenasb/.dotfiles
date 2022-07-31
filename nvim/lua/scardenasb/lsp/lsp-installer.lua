local status_ok, lsp_installer = pcall(require, "nvim-lsp-installer")
if not status_ok then
	return
end

lsp_installer.settings({
	ensure_installed = { "sumneko_lua", "pyright", "html", "tsserver" },
	ui = {
		icons = {
			server_installed = "✓",
			server_pending = "➜",
			server_uninstalled = "✗",
		},
	},
})

lsp_installer.on_server_ready(function(server)
	local opts = {
		on_attach = require("scardenasb.lsp.lsp-config").on_attach,
		capabilities = require("scardenasb.lsp.lsp-config").capabilities,
	}
	if server.name == "sumneko_lua" then
		local sumneko_opts = require("scardenasb.lsp.servers.sumneko_lua")
		opts = vim.tbl_deep_extend("force", sumneko_opts, opts)
	end

	if server.name == "pyright" then
		local pyright_opts = require("scardenasb.lsp.servers.pyright")
		opts = vim.tbl_deep_extend("force", pyright_opts, opts)
	end

	if server.name == "html" then
		local html_opts = require("scardenasb.lsp.servers.html")
		opts = vim.tbl_deep_extend("force", html_opts, opts)
	end

	if server.name == "tsserver" then
		local tsserver_opts = require("scardenasb.lsp.servers.tsserver")
		opts = vim.tbl_deep_extend("force", tsserver_opts, opts)
	end

	server:setup(opts)
end)
