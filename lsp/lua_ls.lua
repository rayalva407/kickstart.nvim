return {
	cmd = { 'lua-language-server' },
	filetypes = { 'lua' },
	root_markers = {
		'.luarc.json',
		'.luarc.jsonc',
		'.luacheckrc',
		'.stylua.toml',
		'stylua.toml',
		'selene.toml',
		'selene.yml',
		'.git',
	},
	workspace = {
		checkThirdParty = false,
		library = {
			vim.env.VIMRUNTIME,
			'${3rd}/luv/library',
			'${3rd}/busted/library',
		},
	},
	on_attach = function(client, bufnr)
		vim.lsp.completion.enable(true, client.id, bufnr, {
			autotrigger = true,
			convert = function(item)
				return { abbr = item.label:gsub('%b()', '') }
			end,
		})
		vim.keymap.set('i', '<C-space>', vim.lsp.completion.get, { desc = 'trigger autocompletion' })
	end,
	settings = {
		Lua = {
			diagnostics = {
				disable = { 'missing-fields' },
				globals = { 'vim' },
			},
			hint = {
				enable = true,
				setType = false,
				paramType = true,
				paramName = 'Disable',
				semicolon = 'Disable',
				arrayIndex = 'Disable',
			},
		},
	},
}
