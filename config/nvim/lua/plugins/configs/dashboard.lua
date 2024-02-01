local dashboard = require("alpha.themes.dashboard")
local logo = [[
     ██╗ █████╗ ██╗   ██╗███╗   ███╗███████╗
     ██║██╔══██╗██║   ██║████╗ ████║██╔════╝
     ██║███████║██║   ██║██╔████╔██║█████╗
██   ██║██╔══██║██║   ██║██║╚██╔╝██║██╔══╝
╚█████╔╝██║  ██║╚██████╔╝██║ ╚═╝ ██║███████╗
 ╚════╝ ╚═╝  ╚═╝ ╚═════╝ ╚═╝     ╚═╝╚══════╝
]]
dashboard.section.header.val = vim.split(logo, "\n")
dashboard.section.buttons.val = {
  dashboard.button("f", "󰈔" .. " Find file", ":Telescope find_files <CR>"),
  dashboard.button("r", "󱋡" .. " Recent files", ":Telescope oldfiles <CR>"),
  dashboard.button("g", "󰈈" .. " Find text", ":Telescope live_grep <CR>"),
  dashboard.button("l", "󰏓" .. " Lazy", ":Lazy<CR>"),
  dashboard.button("q", "󰠚" .. " Quit", ":qa<CR>"),
}
dashboard.section.header.opts.hl = "AlphaHeader"
dashboard.opts.layout[1].val = 6
return dashboard
