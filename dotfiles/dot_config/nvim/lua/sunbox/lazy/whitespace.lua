return {
  "ntpeters/vim-better-whitespace",
  event = { "BufReadPost", "BufNewFile" },
  config = function()
    vim.g.better_whitespace_enabled = 1
    vim.g.strip_whitespace_on_save = 1
    vim.g.strip_whitespace_confirm = 0
    vim.g.better_whitespace_ctermcolor = "red"
    vim.g.better_whitespace_guicolor = "#803232"
  end,
}
