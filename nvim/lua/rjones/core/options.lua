-- Set line number config
vim.opt.number = true
vim.opt.relativenumber = true

-- Allow mouse mode (useful for resizing windows)
vim.opt.mouse = "a"

-- Hide the mode from the command prompt
vim.opt.showmode = false

-- Sync OS and Neovim clipboards
vim.opt.clipboard = "unnamedplus"

-- Enable break indent
vim.opt.breakindent = true
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2

vim.opt.wrap = false
-- Save undo history
vim.opt.undofile = true

-- Sets searches to be case insensitive UNLESS \C or one or more capital letters is in the search
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Keep signcolumn enabled
vim.opt.signcolumn = "yes"

-- Decrease update time and increase timeout time (which-key pops up sooner)
vim.opt.updatetime = 250
vim.opt.timeoutlen = 300

-- Configure split abilities
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Change how nvim will display whitespace characters
vim.opt.list = true
vim.opt.listchars = { tab = "» ", trail = ".", nbsp = "␣" }

-- Preview subsitutions live
vim.opt.inccommand = "split"

-- Show which line the cursor is on
vim.opt.cursorline = true

-- Min number of lines to show before view scrolls
vim.opt.scrolloff = 10

-- Highlight on search, but clear it when you press <Esc> in normal mode
vim.opt.hlsearch = true
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")
