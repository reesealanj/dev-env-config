return {
  "rebelot/kanagawa.nvim",
  lazy = false,
  priority = 1000,
  init = function()
    vim.cmd.colorscheme("kanagawa-wave")
    vim.cmd.hi("Comment gui=none")
  end
}
