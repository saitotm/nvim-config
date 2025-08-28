# Local Configuration Directory

This directory is for managing **environment-specific settings** in Neovim configuration.

## Overview

You can write settings that are not shared between individual environments, separate from the shared settings across each environment through `nvim/lua/user`. The settings under this directory are optional and can be used as needed.

## Usage

### Initial Setup

1. Copy `init_template.lua` to `init.lua` to start using
2. Add environment-specific settings as needed

### Plugin Configuration

You can add environment-specific plugins by placing Lazy.nvim format plugin configuration files under the `nvim/lua/local/plugins/` directory.

Example:
```lua
-- nvim/lua/local/plugins/example.lua
return {
  "plugin/name",
  config = function()
    -- Environment-specific settings
  end,
}
```

## Notes

- This directory is not managed by Git (already registered in .gitignore)
- Write only environment-specific settings here; shared settings should be placed in `nvim/lua/user`
