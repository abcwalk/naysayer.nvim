# naysayer.nvim

🎨 A dark green-blue Neovim colorscheme. It's a port of [Nick Aversano's Emacs theme](https://github.com/nickav/naysayer-theme.el) for Neovim, best known from Jonathan Blow's compiler livestreams.

## Features

- ✅ High-contrast dark theme
- ✅ Clean typography for code
- ✅ Inspired by Monokai, but more muted
- ✅ Support for diagnostics and LSP
- ✅ Rainbow parentheses compatible

## Installation

### Using Lazy.nvim

```lua
{
  'RostislavArts/naysayer.nvim',
  priority = 1000,
  lazy = false,
  config = function()
    vim.cmd.colorscheme('naysayer')
  end,
}
````

### Using Packer

```lua
use {
  'RostislavArts/naysayer.nvim',
  config = function()
    vim.cmd.colorscheme('naysayer')
  end
}
```

## Usage

```lua
vim.cmd.colorscheme('naysayer')
```

## License

[GPL-3+](LICENSE) — same license as the original Emacs theme.

