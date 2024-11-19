return {
  "nvim-treesitter/nvim-treesitter",  
  event = {"BufReadPre", "BufNewFile"},
  build = ":TSUpdate",
  dependencies = {
    "windwp/nvim-ts-autotag",
  },
  config = function()
    local treesitter = require("nvim-treesitter.configs")
    treesitter.setup({
      highlight = {
        enable = true,
      },
      indent = {
        enable = true,
      },
      autotag = {
        enable = true,
      },
      auto_install = true,
      ignore_install = { "" },
      sync_install = false,
      modules = {},
      ensure_installed = {
        "css",
        "html",
        "javascript",
        "json",
        "lua",
        "typescript",
        "tsx",
        "yaml",
        "java",
        "elixir",
        "eex",
        "heex",
        "ruby",
        "markdown",
        "bash",
        "dockerfile",
        "gitignore",
        "sql",
        "xml",
        "go",
      },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<C-space>",
          node_incremental = "<C-space>",
          scope_incremental = false,
          node_decremental = "bs",
        },
      },
    })
  end,
}
