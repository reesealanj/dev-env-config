return {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPre", "BufNewFile" },
  build = ":TSUpdate",
  dependencies = {
    "windwp/nvim-ts-autotag", 
  },
  config = function()
    local treesitter = require("nvim-treesitter.configs")

    treesitter.setup({
      higlight = {
        enable = true,
      },
      indent = { enable = true, disable = { "ruby" } },
      autotag = { enable = true },
      auto_install = true, 
      ensure_installed = {
        "bash", 
        "c", 
        "html",
        "css",
        "javascript",
        "typescript",
        "tsx",
        "json",
        "yaml",
        "prisma",
        "markdown",
        "markdown_inline",
        "svelte",
        "graphql",
        "lua",
        "vim",
        "vimdoc",
        "dockerfile",
        "gitignore",
        "query",
        "luadoc"
      },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<C-space>",
          node_incremental = "<C-space>",
          scope_incremental = false,
          node_decremental = "<bs>",
        },
      },
    })
  end,
}
