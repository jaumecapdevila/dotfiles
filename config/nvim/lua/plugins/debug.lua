local utils = require("core.utils")

if utils.isVscode() then
  return {}
end

return {
  -- profile nvim startup time
  {
    "dstein64/vim-startuptime",
    cmd = "StartupTime",
    config = function() vim.g.startuptime_tries = 10 end,
  },
}
