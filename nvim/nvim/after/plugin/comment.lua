require('Comment').setup()

vim.keymap.set({'n', 'v', 'x', 'v'}, '<leader>cc', function()
    -- Enter visual line mode
    vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes('V', true, false, true), 'n', false)
    -- Wait for the next tick so that Visual mode is fully entered, then feed 'gb'
    vim.defer_fn(function()
        vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes('gb', true, false, true), 'x', false)
    end, 0)
end, {silent = true, noremap = true})
