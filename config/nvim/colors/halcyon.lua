local colorbuddy = require("colorbuddy")

colorbuddy.colorscheme("halcyon")

local Color = colorbuddy.Color
local colors = colorbuddy.colors
local Group = colorbuddy.Group
local groups = colorbuddy.groups
local styles = colorbuddy.styles

-- Use Color.new(<name>, <#rrggbb>) to create new colors
-- They can be accessed through colors.<name>

-- Syntax colors
Color.new("purple", "#c3a6ff") -- Constants, template literals
Color.new("yellow", "#ffd580") -- Functions, classes, object literal keys
Color.new("orange", "#ffae57") -- Constants, operators
Color.new("green", "#bae67e") -- Strings, markdown headings
Color.new("cyan", "#5ccfe6") -- Special keywords, classes, markdown code blocks
Color.new("gray", "#a2aabc") -- Variables, property names, tags, editor fg

-- UI colors
Color.new("editor", "#1d2433") -- Editor background
Color.new("workbench", "#171c28") -- Workbench background
Color.new("highlight", "#2f3b54") -- Highlight, widgets, panels
Color.new("divider", "#6679a4") -- Dividers, subtle UI elements
Color.new("status", "#8695b7") -- Status bar text, buttons, etc
Color.new("active", "#d7dce2") -- Active text, anything that should be white
Color.new("accent", "#ffcc66") -- Accent, list tree titles, badges, etc
Color.new("addition", "#bae67e") -- Addition highlights
Color.new("deletion", "#ef6b73") -- Deletion highlights, errors, warnings
Color.new("modified", "#5ccfe6") -- Modified highlights

-- Error lense colors
Color.new("error", "#ff6464")
Color.new("warning", "#fa973a")
Color.new("info", "#00b7e4")
Color.new("hint", "#2faf64")

-- Define highlights in terms of `colors` and `groups`

-- General
Group.new("Normal", colors.gray, colors.editor)
Group.new("NormalFloat", nil, groups.Normal)
Group.new("FloatBorder", colors.divider, nil)
Group.new("FloatTitle", colors.gray, nil)
Group.new("ColorColumn", nil, colors.workbench)
Group.new("Cursor", colors.accent, colors.editor)
Group.new("CursorColumn", nil, colors.workbench)
Group.new("CursorLine", nil, colors.highlight)
Group.new("CursorLineNr", colors.active, colors.highlight)
Group.new("LineNr", colors.status:dark(), nil)
Group.new("Directory", colors.cyan, nil)
Group.new("ErrorMsg", colors.deletion, nil)
Group.new("WinSeparator", colors.divider, colors.editor)
Group.new("VertSplit", groups.WinSeparator, groups.WinSeparator)
Group.new("Folded", colors.gray:dark(), colors.highlight)
Group.new("FoldColumn", nil, colors.editor)
Group.new("SignColumn", nil, colors.editor)

Group.new("MatchParen", colors.purple, nil)
Group.new("ModeMsg", colors.green, nil)
Group.new("MoreMsg", colors.green, nil)
-- NonText = { fg = colors.guide_normal },
-- Pmenu = { fg = colors.fg, bg = colors.selection_inactive },
-- PmenuSel = { fg = colors.fg, bg = colors.selection_inactive, reverse = true },
-- Question = { fg = colors.string },
-- Search = { fg = colors.bg, bg = colors.constant },
-- CurSearch = { fg = colors.bg, bg = colors.special },
-- IncSearch = { fg = colors.keyword, bg = colors.selection_inactive },
-- SpecialKey = { fg = colors.selection_inactive },
-- SpellCap = { sp = colors.tag, undercurl = true },
-- SpellLocal = { sp = colors.keyword, undercurl = true },
-- SpellBad = { sp = colors.error, undercurl = true },
-- SpellRare = { sp = colors.regexp, undercurl = true },
-- StatusLine = { fg = colors.fg, bg = colors.panel_bg },
-- StatusLineNC = { fg = colors.fg_idle, bg = colors.panel_bg },
-- WildMenu = { fg = colors.fg, bg = colors.markup },
-- TabLine = { fg = colors.comment, bg = colors.panel_shadow },
-- TabLineFill = { fg = colors.fg, bg = colors.panel_border },
-- TabLineSel = { fg = colors.fg, bg = colors.bg },
Group.new("Title", colors.yellow, nil)
Group.new("Visual", colors.active, colors.highlight)
Group.new("WarningMsg", colors.warning)

-- General syntax
Group.new("Comment", colors.status:dark(), nil, styles.italic)
Group.new("Constant", colors.purple, nil, styles.bold)
Group.new("Delimiter", colors.gray, nil)
Group.new("Exception", colors.orange, nil)
Group.new("Function", colors.yellow, nil)
Group.new("Identifier", colors.gray, nil)
Group.new("Keyword", colors.purple, nil, styles.italic)
Group.new("Number", colors.purple, nil, styles.bold)
Group.new("Operator", colors.orange, nil)
Group.new("PreProc", colors.accent, nil)
Group.new("Special", colors.accent, nil)
Group.new("Statement", colors.orange, nil)
Group.new("String", colors.green, nil)
Group.new("Structure", colors.orange, nil)
Group.new("Type", colors.yellow, nil)
Group.new("Underlined", colors.yellow, nil, styles.underline)
Group.new("Ignore", colors.gray, nil)
-- Error = { fg = colors.white, bg = colors.error },
-- Todo = { fg = colors.markup },
-- qfLineNr = { fg = colors.keyword },
-- qfError = { fg = colors.error },
Group.new("Conceal", colors.status:dark(), nil)
-- CursorLineConceal = { fg = colors.guide_normal, bg = colors.line },

Group.new("Added", colors.addition, nil)
Group.new("Removed", colors.deletion, nil)
Group.new("Changed", colors.modified, nil)
-- DiffAdd = { bg = colors.vcs_added_bg },
-- DiffAdded = { fg = colors.vcs_added },
-- DiffDelete = { bg = colors.vcs_removed_bg },
-- DiffRemoved = { fg = colors.vcs_removed },
-- DiffText = { bg = colors.gutter_normal },
-- DiffChange = { bg = colors.selection_inactive },

-- Lsp
Group.new("@DiagnosticError", colors.error, nil)
Group.new("@DiagnosticWarn", colors.warning, nil)
Group.new("@DiagnosticInfo", colors.info, nil)
Group.new("@DiagnosticHint", colors.hint, nil)
Group.new("@DiagnosticUnderlineError", colors.error, nil, styles.underline)
Group.new("@DiagnosticUnderlineWarn", colors.warning, nil, styles.underline)
Group.new("@DiagnosticUnderlineInfo", colors.info, nil, styles.underline)
Group.new("@DiagnosticUnderlineHint", colors.info, nil, styles.underline)

-- Treesitter
Group.new("@keyword", colors.purple, nil, styles.italic)
Group.new("@markup.heading", colors.green, nil)
Group.new("@module", colors.yellow, nil)
Group.new("@property", colors.cyan, nil, styles.italic)
Group.new("@tag.attribute", colors.orange, nil)
Group.new("@tag.delimiter", groups.Delimiter, nil)
Group.new("@tag", colors.yellow, nil)
Group.new("@type.qualifier", colors.purple, nil)
Group.new("@variable.builtin", colors.yellow, nil)
Group.new("@variable.member", colors.yellow, nil)
Group.new("@variable.parameter", colors.orange, nil)
Group.new("@variable", colors.gray, nil)

-- ['@lsp.type.namespace'] = { link = '@module' },
-- ['@lsp.type.type'] = { link = '@type' },
-- ['@lsp.type.class'] = { link = '@type' },
-- ['@lsp.type.enum'] = { link = '@type' },
-- ['@lsp.type.interface'] = { link = '@type' },
-- ['@lsp.type.struct'] = { link = '@variable.member' },
-- ['@lsp.type.parameter'] = { fg = colors.lsp_parameter },
-- ['@lsp.type.field'] = { link = '@variable.member' },
-- ['@lsp.type.variable'] = { link = '@variable' },
-- ['@lsp.type.property'] = { link = '@property' },
-- ['@lsp.type.enumMember'] = { link = '@constant' },
-- ['@lsp.type.function'] = { link = '@function' },
-- ['@lsp.type.method'] = { link = '@function.method' },
-- ['@lsp.type.macro'] = { link = '@function.macro' },
-- ['@lsp.type.decorator'] = { link = '@function' },
-- ['@lsp.mod.constant'] = { link = '@constant' },

-- Cmp.
-- CmpItemAbbrMatch = { fg = colors.keyword },
-- CmpItemAbbrMatchFuzzy = { fg = colors.func },
-- CmpItemKindText = { fg = colors.string },
-- CmpItemKindMethod = { fg = colors.keyword },
-- CmpItemKindFunction = { fg = colors.func },
-- CmpItemKindConstructor = { fg = colors.keyword },
-- CmpItemKindField = { fg = colors.entity },
-- CmpItemKindVariable = { fg = colors.tag },
-- CmpItemKindClass = { fg = colors.entity },
-- CmpItemKindInterface = { fg = colors.entity },
-- CmpItemKindModule = { fg = colors.keyword },
-- CmpItemKindProperty = { fg = colors.keyword },
-- CmpItemKindUnit = { fg = colors.constant },
-- CmpItemKindValue = { fg = colors.constant },
-- CmpItemKindEnum = { fg = colors.entity },
-- CmpItemKindKeyword = { fg = colors.keyword },
-- CmpItemKindSnippet = { fg = colors.regexp },
-- CmpItemKindColor = { fg = colors.special },
-- CmpItemKindFile = { fg = colors.special },
-- CmpItemKindReference = { fg = colors.special },
-- CmpItemKindFolder = { fg = colors.special },
-- CmpItemKindEnumMember = { fg = colors.constant },
-- CmpItemKindConstant = { fg = colors.constant },
-- CmpItemKindStruct = { fg = colors.entity },
-- CmpItemKindEvent = { fg = colors.tag },
-- CmpItemKindOperator = { fg = colors.operator },
-- CmpItemKindTypeParameter = { fg = colors.tag },
-- CmpItemMenu = { fg = colors.comment },

-- Telescope
Group.new("TelescopeBorder", colors.divider, nil)
Group.new("TelescopePromptBorder", colors.accent, nil)

-- NvimTree
Group.new("NvimTreeGitDirty", colors.modified, nil)
Group.new("NvimTreeGitStaged", colors.modified, nil)
Group.new("NvimTreeGitMerge", colors.deletion, nil)
Group.new("NvimTreeGitNew", colors.addition, nil)
Group.new("NvimTreeGitDeleted", colors.deletion, nil)
Group.new("NvimTreeFolderName", colors.status, nil)
Group.new("NvimTreeFolderIcon", colors.status, nil)
Group.new("NvimTreeOpenedFolderName", colors.status, nil)
Group.new("NvimTreeRootFolder", colors.accent, nil)

-- WhichKey.
Group.new("WhichKeyFloat", nil, colors.highlight)
