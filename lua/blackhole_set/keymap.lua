local M = {}

M.setup = function(mappings)
  local opts = { noremap = true, silent = true }

  for _, key in ipairs(mappings) do
    vim.keymap.set("n", key, '"_' .. key, opts)
    vim.keymap.set("v", key, '"_' .. key, opts)
  end
end

return M
