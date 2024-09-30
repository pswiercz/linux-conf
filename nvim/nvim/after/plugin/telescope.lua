local builtin = require('telescope.builtin')
local action_state = require('telescope.actions.state')
local actions = require('telescope.actions')

vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
  builtin.live_grep({
    prompt_title = "Grep",
    attach_mappings = function(_, map)
      map('i', '<CR>', function(bufnr)
        local picker = action_state.get_current_picker(bufnr)
        local multi_selections = picker:get_multi_selection()
        actions.close(bufnr)

        for _, entry in ipairs(multi_selections) do
          vim.cmd('tabnew ' .. entry.filename)
          vim.fn.setpos('.', {0, entry.lnum, entry.col, 0})
        end
      end)
      return true
    end
  })
end)
