local g = vim.g

return {
  mirage = true, -- Set to `true` to use `mirage` variant instead of `dark` for dark background.
  terminal = true, -- Set to `false` to let terminal manage its own colors.
  overrides = {
    Normal = { bg = "None" },
    ColorColumn = { bg = "None" },
    SignColumn = { bg = "None" },
    Folded = { bg = "None" },
    FoldColumn = { bg = "None" },
    CursorLine = { bg = "None" },
    CursorColumn = { bg = "None" },
    WhichKeyFloat = { bg = "None" },
    VertSplit = { bg = "None" },
  },
}
