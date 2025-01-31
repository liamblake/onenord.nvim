-- Refresh cache for local debugging and development purposes
if vim.g.onenord_debug == true then
  package.loaded["onenord"] = nil
  package.loaded["onenord.util"] = nil
  package.loaded["onenord.colors"] = nil
  package.loaded["onenord.theme"] = nil
end

local config = require("onenord.config")
local util = require("onenord.util")

local default_config = config.make_config()
util.load(default_config, false)
