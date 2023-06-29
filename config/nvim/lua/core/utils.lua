local M = {}
local merge_tb = vim.tbl_deep_extend

M.echo = function(str)
  vim.cmd("redraw")
  vim.api.nvim_echo({ { str, "Bold" } }, true, {})
end

M.isVscode = function()
  return vim.g.vscode ~= nil
end

M.map = function(section, extra_opts)
  local core_mappings = require("core.mappings")
  -- TODO handle invalid section
  local mappings = core_mappings[section]

  for mode, mode_values in pairs(mappings) do
    local default_opts = merge_tb("force", { mode = mode }, extra_opts or {})
    for keybind, mapping_info in pairs(mode_values) do
      -- merge default + user opts
      local opts = merge_tb("force", default_opts, mapping_info.opts or {})

      mapping_info.opts, opts.mode = nil, nil
      opts.desc = mapping_info[2]

      if opts.remap and not vim.g.vscode then
        opts.remap = nil
      end

      vim.keymap.set(mode, keybind, mapping_info[1], opts)
    end
  end
end

return M
