local cmd = vim.api.nvim_create_user_command

cmd('BufOnly', '%bdelete!|edit #|normal `"', { nargs = 0, desc = 'Close other buffers' })
