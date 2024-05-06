return {
  "nvim-lualine/lualine.nvim",
  config = function()
    require("lualine").setup({
      sections = {
        lualine_b = {},
        lualine_x = {
          "branch",
          "diff",
          "diagnostics",
        },
      },
      options = {
        theme = "gruvbox-material",
        globalstatus = true,
        icons_enabled = true,
        component_separators = "|",
        section_separators = "|",
      },
    })
  end,
}
