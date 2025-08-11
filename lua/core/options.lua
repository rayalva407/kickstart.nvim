vim.o.number = true -- Make Line Numbers default
vim.schedule(function()
  vim.o.clipboard = 'unnamedplus'
end) -- Sync clipboard between OS and Neovim
vim.o.wrap = false
vim.o.linebreak = true -- Don't split words
vim.o.mouse = 'a' -- Enable mouse mode
vim.o.autoindent = true -- Copy indent from current line when starting new one
vim.o.ignorecase = true -- Case-insensitive searching UNLESS \C or capital in search
vim.o.smartcase = true -- Smart case
vim.g.have_nerd_font = false
vim.o.showmode = false -- Don't show the mode, since it's already in the status line
vim.o.breakindent = true -- Enable break indent
vim.o.undofile = true -- Save undo history
vim.o.signcolumn = 'yes' -- Keep signcolumn on by default
vim.o.updatetime = 250 -- Decrease update time
vim.o.timeoutlen = 300 -- Decrease mapped sequence wait time
vim.o.splitright = true -- Configure how new splits should be opened
vim.o.splitbelow = true
vim.o.list = true -- Sets how neovim will display certain whitespace characters in the editor.
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }
vim.o.inccommand = 'split' -- Preview substitutions live, as you type!
vim.o.cursorline = true -- Show which line your cursor is on
vim.o.scrolloff = 10 -- Minimal number of screen lines to keep above and below the cursor.
vim.o.confirm = true
vim.o.numberwidth = 2
vim.o.smartindent = true
vim.o.termguicolors = true
