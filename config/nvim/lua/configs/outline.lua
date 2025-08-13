return {
  outline_window = {
    -- Where to open the split window: right/left
    position = "right",
    -- Percentage or integer of columns
    width = 33,
    -- Whether width is relative to the total width of nvim
    -- When relative_width = true, this means take 25% of the total
    -- screen width for outline window.
    relative_width = true,
    -- true/false/'focus_in_outline'/'focus_in_code'.
    -- The last two means only show cursorline when the focus is in outline/code.
    -- 'focus_in_outline' can be used if the outline_items.auto_set_cursor
    -- operations are too distracting due to visual contrast caused by cursorline.
    show_cursorline = false,
  },
}
