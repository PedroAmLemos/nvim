local map = vim.api.nvim_set_keymap
local opts = {noremap = true, silent = true}

TelescopeMapArgs = TelescopeMapArgs or {}

map('n', '<leader>lb', ":lua require('telescope.builtin').buffers()<CR>", opts)
map('n', '<leader>gs', ":lua require('telescope.builtin').grep_string({ search = vim.fn.input('Grep for > ')})<CR>", opts)
-- map('n', '<leader>ff', ":lua require('telescope.builtin').find_files()<CR>", opts)
map('n', '<leader>ff', "<cmd>lua require'telescope.builtin'.find_files({ find_command = {'rg', '--files', '--hidden', '-g', '!.git' }})<cr>", opts)
map('n', '<leader>fw', ":lua require('telescope.builtin').grep_string { search = vim.fn.expand('<cword>') }<CR>", opts)
map('n', '<leader>fh', ":lua require('telescope.builtin').help_tags()<CR>", opts)
map('n', '<leader>gitc', ":lua require('telescope.builtin').git_commits()<CR>", opts)
map('n', '<leader>gits', ":lua require('user.telescope').git_status()<CR>", opts)
map('n', '<leader>vrc', ":lua require('user.telescope').edit_neovim()<CR>", opts)
map('n', '<leader>ge', ":lua require('user.telescope').search_only_certain_files()<CR>", opts)
-- map('n', '<leader>ca', ":lua require('user.telescope').lsp_code_actions()<CR>", opts)
map('n', '<leader>r', ":lua require('user.telescope').lsp_references()<CR>", opts)
map('n', '<leader>i', ":lua require('user.telescope').lsp_implementations()<CR>", opts)

