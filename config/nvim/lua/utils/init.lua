local M = {}
local keymap = vim.keymap
local merge = vim.tbl_deep_extend

M.echo = function(str)
  vim.cmd("redraw")
  vim.api.nvim_echo({ { str, "Bold" } }, true, {})
end

M.map = function(mappings, extra_opts)
  for mode, mode_values in pairs(mappings) do
    for keybind, mapping_info in pairs(mode_values) do
      local opts = merge(
        "force",
        { desc = mapping_info[2] },
        mapping_info.opts or {},
        extra_opts or {}
      )
      keymap.set(mode, keybind, mapping_info[1], opts)
    end
  end
end

M.diagnostic_goto = function(next, severity)
  local go = next and vim.diagnostic.goto_next or vim.diagnostic.goto_prev
  severity = severity and vim.diagnostic.severity[severity] or nil
  return function() go({ severity = severity }) end
end

M.highlight = function(group, hl)
  if hl.style then
    if type(hl.style) == "table" then
      hl = vim.tbl_extend("force", hl, hl.style)
    elseif hl.style:lower() ~= "none" then
      -- handle old string style definitions
      for s in string.gmatch(hl.style, "([^,]+)") do
        hl[s] = true
      end
    end
    hl.style = nil
  end
  vim.api.nvim_set_hl(0, group, hl)
end

return M
