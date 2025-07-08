local ok, theme = pcall(require, "naysayer")
local colors = ok and theme.setup() or {}

return {
  normal = {
    a = { fg = colors.lualine_fg, bg = colors.lualine_bg, gui = "bold" },
    b = { fg = colors.lualine_fg, bg = colors.lualine_bg },
    c = { fg = colors.lualine_fg, bg = colors.lualine_bg },
  },
  insert = {
    a = { fg = colors.lualine_fg, bg = colors.green, gui = "bold" },
    b = { fg = colors.lualine_fg, bg = colors.green },
    c = { fg = colors.lualine_fg, bg = colors.lualine_bg },
  },
  visual = {
    a = { fg = colors.lualine_fg, bg = colors.blue, gui = "bold" },
    b = { fg = colors.lualine_fg, bg = colors.blue },
    c = { fg = colors.lualine_fg, bg = colors.lualine_bg },
  },
  replace = {
    a = { fg = colors.lualine_fg, bg = colors.red, gui = "bold" },
    b = { fg = colors.lualine_fg, bg = colors.red },
    c = { fg = colors.lualine_fg, bg = colors.lualine_bg },
  },
  inactive = {
    a = { fg = colors.line_fg or "#555555", bg = colors.gutter or "#111111", gui = "bold" },
    b = { fg = colors.line_fg or "#555555", bg = colors.gutter or "#111111" },
    c = { fg = colors.line_fg or "#555555", bg = colors.gutter or "#111111" },
  },
}

