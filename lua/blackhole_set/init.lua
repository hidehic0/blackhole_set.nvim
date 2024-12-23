local M = {}

local default_config = {
  mappings = {},
}

M.setup = function(user_config)
  M.config = vim.tbl_deep_extend("force", default_config, user_config or {})

  require("blackhole_set.keymap").setup(M.config.mappings)
end
