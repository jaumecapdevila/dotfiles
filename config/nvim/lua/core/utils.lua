local M = {}
local merge_tb = vim.tbl_deep_extend

M.echo = function(str)
  vim.cmd("redraw")
  vim.api.nvim_echo({ { str, "Bold" } }, true, {})
end

M.map = function(section, extra_opts)
  local core_mappings = require("core.mappings")

  local mappings = core_mappings[section]

  if not mappings then
    M.echo("No mappings found for " .. section)
    return
  end

  for mode, mode_values in pairs(mappings) do
    local default_opts = merge_tb("force", { mode = mode }, extra_opts or {})
    for keybind, mapping_info in pairs(mode_values) do
      -- merge default + user opts
      local opts = merge_tb("force", default_opts, mapping_info.opts or {})

      mapping_info.opts, opts.mode = nil, nil
      opts.desc = mapping_info[2]

      if opts.remap and not vim.g.vscode then opts.remap = nil end

      vim.keymap.set(mode, keybind, mapping_info[1], opts)
    end
  end
end

M.diagnostic_goto = function(next, severity)
  local go = next and vim.diagnostic.goto_next or vim.diagnostic.goto_prev
  severity = severity and vim.diagnostic.severity[severity] or nil
  return function() go({ severity = severity }) end
end

return M
