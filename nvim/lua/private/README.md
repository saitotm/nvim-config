# Private Configuration Directory

This directory is for managing **environment-specific settings** in Neovim configuration.

## Overview

You can write settings that are not shared between individual environments, separate from the shared settings across each environment through `nvim/lua/common`. The settings under this directory are optional and can be used as needed.

## Usage

### Initial Setup

1. Copy `init_template.lua` to `init.lua` to start using
2. Add environment-specific settings as needed

### Plugin Configuration

You can add environment-specific plugins by placing Lazy.nvim format plugin configuration files under the `nvim/lua/private/plugins/` directory.

Example:
```lua
-- nvim/lua/private/plugins/example.lua
return {
  "plugin/name",
  config = function()
    -- Environment-specific settings
  end,
}
```

### Obsidian.nvim Configuration

obsidian.nvim plugin is conditionally enabled based on the presence of `private/obsidian.lua` file:

To enable obsidian.nvim:
1. Copy `obsidian_template.lua` to `obsidian.lua`
2. Update the workspace path to match your environment:
   ```lua
   return {
     workspaces = {
       { name = "main", path = "YOUR_OBSIDIAN_VAULT_PATH" },
     },
   }
   ```

## Notes

- This directory is not managed by Git (already registered in .gitignore)
- Write only environment-specific settings here; shared settings should be placed in `nvim/lua/common`
