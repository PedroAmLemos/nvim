local util = require "lspconfig.util"
return {
  root_dir = util.root_pattern(".git", "src/", ".proj"),
  single_file_support = false
}
