return {
  "supermaven-inc/supermaven-nvim",
  config = function()
    require("supermaven-nvim").setup({
      keymaps = {
        accept_suggestion = "<C-a>",
        clear_suggestion = "<A-q>",
        accept_word = "<C-w>",
      },
    })
  end,
}
