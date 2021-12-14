-- IMPORTANT NOTE : This is the user config, can be edited. Will be preserved if updated with internal updater
-- This file is for NvChad options & tools, custom settings are split between here and 'lua/custom/init.lua'

local M = {}
M.options, M.ui, M.mappings, M.plugins = {}, {}, {}, {}

-- NOTE: To use this, make a copy with `cp example_chadrc.lua chadrc.lua`

--------------------------------------------------------------------

-- To use this file, copy the structure of `core/default_config.lua`,
-- examples of setting relative number & changing theme:

-- M.options = {
--    relativenumber = true,
-- }

M.ui = {
  theme = "chadracula"
}

-- NvChad included plugin options & overrides
M.plugins = {
  options = {
      lspconfig = {
         setup_lspconf = "custom.plugins.lspconfig",
      },
   }, 

  status = {
     dashboard = true,
   }
}

return M

-- this will replace lspconfig's default config with the file custom/lspconfig.lua
-- make sure you do :PackerCompile or :PackerSync after this since the packer_compiled.vim or packer_compiled.lua present in the ~/.config/nvim/plugin dir needs to update the paths!
