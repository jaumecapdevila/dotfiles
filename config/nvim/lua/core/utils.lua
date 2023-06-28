local M = {}
local merge_tb = vim.tbl_deep_extend

M.echo = function(str)
  vim.cmd("redraw")
  vim.api.nvim_echo({ { str, "Bold" } }, true, {})
end

M.map = function(mappings, mapping_opt)
  for mode, mode_values in pairs(mappings) do
    local default_opts = merge_tb("force", { mode = mode }, mapping_opt or {})
    for keybind, mapping_info in pairs(mode_values) do
      -- merge default + user opts
      local opts = merge_tb("force", default_opts, mapping_info.opts or {})

      mapping_info.opts, opts.mode = nil, nil
      opts.desc = mapping_info[2]

      vim.keymap.set(mode, keybind, mapping_info[1], opts)
    end
  end
end

return M
