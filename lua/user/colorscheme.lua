-- vim.g.tokyonight_transparent = true
-- vim.g.tokyonight_transparent_sidebar = true
vim.cmd [[
try
  " au ColorScheme * hi Normal ctermbg=none guibg=none
  " au ColorScheme myspecialcolors hi Normal ctermbg=red guibg=red
  colorscheme tokyonight
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=dark
endtry
]]
