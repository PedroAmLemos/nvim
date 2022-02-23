local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
  return
end

--[[ === ENABLE NEORG TREESITTER SUPPORT === ]]
-- local parser_configs = require('nvim-treesitter.parsers').get_parser_configs()
--
--
-- parser_configs.norg = {
--     install_info = {
--         url = "https://github.com/nvim-neorg/tree-sitter-norg",
--         files = { "src/parser.c", "src/scanner.cc" },
--         branch = "main"
--     },
-- }
--
-- parser_configs.norg_meta = {
--     install_info = {
--         url = "https://github.com/nvim-neorg/tree-sitter-norg-meta",
--         files = { "src/parser.c" },
--         branch = "main"
--     },
-- }
--
-- parser_configs.norg_table = {
--     install_info = {
--         url = "https://github.com/nvim-neorg/tree-sitter-norg-table",
--         files = { "src/parser.c" },
--         branch = "main"
--     },
-- }



configs.setup {
  ensure_installed = "maintained",

  sync_install = false,
  -- ignore_install = {""},

  highlight = {
    enable = true,
    -- disable = { "haskell" },
    additional_vim_regex_highlighting = true,
  },

  indent = { enable = true, disable = { "yaml", "python", "c" } },

  autotag = {
    enable = true,
    disable = { "xm" },
  },

  autopairs = {
    enable = true,
  },

  rainbow = {
    enable = true,
    extended_mode = true, -- Highlight also non-parentheses delimiters, boolean or table: lang -> boolean
    max_file_lines = nil, -- Do not enable for files with more than 1000 lines, int
  },
  context_commentstring = {
    enable_autocmd = false,
  },
  refactor = {
    smart_rename = {
      enable = true,
      keymaps = {
        smart_rename = "grr",
      },
    },
  },
}
