local ok, naysayer = pcall(require, "naysayer")
local c = ok and naysayer.colors() or {
  lualine_fg = "#12251b",
  lualine_bg = "#d3b58e",
  green = "#A6E22E",
  blue = "#66D9EF",
  red = "#F92672",
  line_fg = "#126367",
  gutter = "#062625"
}

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

