-- ~/.config/nvim/lua/custom_highlights.lua

-- Function to extend the current colorscheme with custom highlights
local function extend_highlights()
  -- Table of highlight groups to make italic
  local italic_groups = {
    "Comment",
    "Conditional",
    "Define",
    "Exception",
    "Identifier",
    "Include",
    "Keyword",
    "Label",
    "Macro",
    "PreCondit",
    "PreProc",
    "Repeat",
    "StorageClass",
    "Structure",
    "Typedef",
    "@keyword",
    "@keyword.conditional",
    "@keyword.repeat",
    "@property",
  }

  -- Table of highlight groups to make bold
  local bold_groups = {
    "Boolean",
    "Character",
    "Constant",
    "Float",
    "Function",
    "Number",
    "Special",
    "Statement",
    "String",
    "Type",
    "@function",
    "@keyword.function",
    "@number",
  }

  -- Apply italic formatting
  for _, group in ipairs(italic_groups) do
    local current_hl = vim.api.nvim_get_hl(0, { name = group })
    if current_hl then
      current_hl.italic = true
      vim.api.nvim_set_hl(0, group, current_hl)
    end
  end

  -- Apply bold formatting
  for _, group in ipairs(bold_groups) do
    local current_hl = vim.api.nvim_get_hl(0, { name = group })
    if current_hl then
      current_hl.bold = true
      vim.api.nvim_set_hl(0, group, current_hl)
    end
  end
end

-- Create an autocommand that runs after colorscheme changes
vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "*",
  callback = function()
    -- Delay the execution slightly to ensure the colorscheme is fully loaded
    vim.defer_fn(extend_highlights, 10)
  end,
})

-- Run once immediately for the current colorscheme
extend_highlights()
