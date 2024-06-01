return {
  "nvim-treesitter/nvim-treesitter",
  dependencies = {
    { "nvim-treesitter/nvim-treesitter-textobjects" },
  },
  build = ":TSUpdate",
  config = function()
    local configs = require("nvim-treesitter.configs")
    configs.setup({
      ensure_installed = {
        "python",
        "html",
        "javascript",
        "typescript",
        "lua",
      },
      auto_install = true,
      highlight = { enable = true },
      indent = { enable = true },
      textobjects = {
        select = {
          enable = true,
          lookahead = true,
          keymaps = {
            ["aa"] = "@parameter.outer",
            ["ia"] = "@parameter.inner",
            ["af"] = "@function.outer",
            ["if"] = "@function.inner",
            ["ac"] = "@class.outer",
            ["ic"] = "@class.inner",
            ["ii"] = "@conditional.inner",
            ["ai"] = "@conditional.outer",
            ["il"] = "@loop.inner",
            ["al"] = "@loop.outer",
          },
        },
      },
    })
  end,
}
