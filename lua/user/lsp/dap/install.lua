local dap_install = require "dap-install"

dap_install.setup {
  installatimn_path = vim.fn.stdpath "data" .. "/dapinstall/",
}
