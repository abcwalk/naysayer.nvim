local c = require("colors.naysayer")

return {
  normal = {
    a = { fg = c.lualine_fg, bg = c.lualine_bg, gui = "bold" },
    b = { fg = c.lualine_fg, bg = c.lualine_bg },
    c = { fg = c.lualine_fg, bg = c.lualine_bg },
  },
  insert = {
    a = { fg = c.lualine_fg, bg = c.green, gui = "bold" },
    b = { fg = c.lualine_fg, bg = c.green },
    c = { fg = c.lualine_fg, bg = c.lualine_bg },
  },
  visual = {
    a = { fg = c.lualine_fg, bg = c.blue, gui = "bold" },
    b = { fg = c.lualine_fg, bg = c.blue },
    c = { fg = c.lualine_fg, bg = c.lualine_bg },
  },
  replace = {
    a = { fg = c.lualine_fg, bg = c.red, gui = "bold" },
    b = { fg = c.lualine_fg, bg = c.red },
    c = { fg = c.lualine_fg, bg = c.lualine_bg },
  },
  inactive = {
    a = { fg = c.line_fg, bg = c.gutter, gui = "bold" },
    b = { fg = c.line_fg, bg = c.gutter },
    c = { fg = c.line_fg, bg = c.gutter },
  },
}

