return {
  render_modes = { "n", "c", "t" },
  bullet = {
    -- Turn on / off list bullet rendering
    enabled = true,
  },
  checkbox = {
    -- Turn on / off checkbox state rendering
    enabled = true,
    -- Determines how icons fill the available space:
    --  inline:  underlying text is concealed resulting in a left aligned icon
    --  overlay: result is left padded with spaces to hide any additional text
    position = "inline",
    unchecked = {
      -- Replaces '[ ]' of 'task_list_marker_unchecked'
      icon = "   󰄱 ",
      -- Highlight for the unchecked icon
      highlight = "RenderMarkdownUnchecked",
      -- Highlight for item associated with unchecked checkbox
      scope_highlight = nil,
    },
    checked = {
      -- Replaces '[x]' of 'task_list_marker_checked'
      icon = "   󰱒 ",
      -- Highlight for the checked icon
      highlight = "RenderMarkdownChecked",
      -- Highlight for item associated with checked checkbox
      scope_highlight = nil,
    },
  },
  html = {
    -- Turn on / off all HTML rendering
    enabled = true,
    comment = {
      -- Turn on / off HTML comment concealing
      conceal = false,
    },
  },
  -- Add custom icons lamw26wmal
  link = {
    image = vim.g.neovim_mode == "skitty" and "" or "󰥶 ",
    custom = {
      youtu = { pattern = "youtu%.be", icon = "󰗃 " },
    },
  },
  heading = {
    sign = false,
    icons = { "󰎤 ", "󰎧 ", "󰎪 ", "󰎭 ", "󰎱 ", "󰎳 " },
  },
  code = {
    -- if I'm not using yabai, I cannot make the color of the codeblocks
    -- transparent, so just disabling all rendering 😢
    style = "none",
  },
}
