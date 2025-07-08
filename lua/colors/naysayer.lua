-- naysayer.nvim - a Neovim colorscheme inspired by Emacs naysayer-theme
-- Author: made by Rostislav Sobolevskiy based on Nick Aversano's Emacs theme

local default_colors = {
  yellow     = "#E6DB74",
  orange     = "#FD971F",
  red        = "#F92672",
  magenta    = "#FD5FF0",
  blue       = "#66D9EF",
  green      = "#A6E22E",
  cyan       = "#A1EFE4",
  violet     = "#AE81FF",

  background = "#062625",
  gutter     = "#062625",
  selection  = "#0000ff",
  text       = "#d0b892",
  comment    = "#53d549",
  punctuation= "#8cde94",
  keyword    = "#ffffff",
  variable   = "#c1d1e3",
  function_  = "#ffffff",
  string     = "#3ad0b5",
  constant   = "#87ffde",
  macro      = "#8cde94",
  number     = "#87ffde",
  white      = "#ffffff",
  error      = "#ff0000",
  warning    = "#ffaa00",
  highlight  = "#0b3335",
  line_fg    = "#126367",
  lualine_fg = "#12251b",
  lualine_bg = "#d3b58e",
}

local M = {}

local last_colors = nil

M.setup = function(opts)
  local colors = vim.tbl_deep_extend("force", {}, default_colors, opts or {})
  last_colors = colors

  vim.cmd("highlight clear")
  vim.o.background = "dark"
  vim.g.colors_name = "naysayer"

  local set = vim.api.nvim_set_hl

  -- Core UI
  set(0, "Normal",           { fg = colors.text, bg = colors.background })
  set(0, "Cursor",           { bg = colors.white })
  set(0, "Visual",           { bg = colors.selection })
  set(0, "LineNr",           { fg = colors.line_fg, bg = colors.background })
  set(0, "CursorLineNr",     { fg = colors.white, bg = colors.background })
  set(0, "CursorLine",       { bg = colors.highlight })
  set(0, "ColorColumn",      { bg = colors.highlight })
  set(0, "VertSplit",        { fg = colors.line_fg })
  set(0, "MatchParen",       { bg = colors.selection })

  -- Syntax
  set(0, "Comment",          { fg = colors.comment })
  set(0, "String",           { fg = colors.string })
  set(0, "Number",           { fg = colors.number })
  set(0, "Boolean",          { fg = colors.constant })
  set(0, "Constant",         { fg = colors.constant })
  set(0, "Identifier",       { fg = colors.variable })
  set(0, "Function",         { fg = colors.function_ })
  set(0, "Statement",        { fg = colors.keyword })
  set(0, "Keyword",          { fg = colors.keyword })
  set(0, "Type",             { fg = colors.punctuation })
  set(0, "PreProc",          { fg = colors.macro })
  set(0, "Special",          { fg = colors.orange })
  set(0, "WarningMsg",       { fg = colors.warning })
  set(0, "Error",            { fg = colors.error })

  -- Diagnostics
  set(0, "DiagnosticError",  { fg = colors.red })
  set(0, "DiagnosticWarn",   { fg = colors.warning })
  set(0, "DiagnosticInfo",   { fg = colors.blue })
  set(0, "DiagnosticHint",   { fg = colors.cyan })

  -- Rainbow delimiters (optional)
  set(0, "rainbowcol1", { fg = colors.violet })
  set(0, "rainbowcol2", { fg = colors.blue })
  set(0, "rainbowcol3", { fg = colors.green })
  set(0, "rainbowcol4", { fg = colors.yellow })
  set(0, "rainbowcol5", { fg = colors.orange })
  set(0, "rainbowcol6", { fg = colors.red })

  -- Lualine integration
  set(0, "StatusLine",        { fg = colors.lualine_fg, bg = colors.lualine_bg })
  set(0, "StatusLineNC",      { fg = colors.line_fg, bg = colors.gutter })

  return colors
end

M.colors = function()
  return last_colors or default_colors
end

return M

