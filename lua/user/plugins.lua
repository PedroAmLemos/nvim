local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
-- vim.cmd [[
--   augroup packer_user_config
--     autocmd!
--     autocmd BufWritePost plugins.lua source <afile> | PackerSync
--   augroup end
-- ]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

-- Install your plugins here
return packer.startup(function(use)
  -- My plugins here
  use "wbthomason/packer.nvim"
  use "nvim-lua/popup.nvim"
  use "nvim-lua/plenary.nvim"
  use "kyazdani42/nvim-web-devicons"
  use "kyazdani42/nvim-tree.lua"
  use "akinsho/bufferline.nvim"
  use "moll/vim-bbye"
  use "nvim-lualine/lualine.nvim"
  use "akinsho/toggleterm.nvim"
  use "ahmedkhalf/project.nvim"
  use "lewis6991/impatient.nvim"
  use "goolord/alpha-nvim"
  use "lukas-reineke/indent-blankline.nvim"
  use "antoinemadec/FixCursorHold.nvim" -- This is needed to fix lsp doc highlight

  -- Colorschemes
  -- use "lunarvim/colorschemes" -- A bunch of colorschemes you can try out
  use "lunarvim/darkplus.nvim"
  -- use "martinsione/darkplus.nvim"
  use "rose-pine/neovim"
  use "folke/tokyonight.nvim"
  -- use "sainnhe/gruvbox-material"
  use "shaunsingh/nord.nvim"
  use "rmehri01/onenord.nvim"
  use "morhetz/gruvbox"
  use "rafamadriz/neon"

  -- cmp plugins
  use "hrsh7th/nvim-cmp"
  use "hrsh7th/cmp-buffer"
  use "hrsh7th/cmp-path"
  use "hrsh7th/cmp-cmdline"
  use "hrsh7th/cmp-nvim-lsp"
  use {
    "tzachar/cmp-tabnine",
    config = function()
      local tabnine = require "cmp_tabnine.config"
      tabnine:setup {
        max_lines = 1000,
        max_num_results = 5,
        sort = true,
      }
    end,

    run = "./install.sh",
    requires = "hrsh7th/nvim-cmp",
  }
  use "hrsh7th/cmp-nvim-lua"
  use "saadparwaiz1/cmp_luasnip"

  -- snippets
  use "L3MON4D3/LuaSnip"
  use "rafamadriz/friendly-snippets"

  -- LSP
  use "neovim/nvim-lspconfig"
  use "williamboman/nvim-lsp-installer"
  use "tamago324/nlsp-settings.nvim"
  use "mfussenegger/nvim-jdtls"
  use "jose-elias-alvarez/null-ls.nvim"

  -- Telescope
  use "nvim-telescope/telescope.nvim"
  use "nvim-telescope/telescope-ui-select.nvim"
  use "https://github.com/nvim-telescope/telescope-media-files.nvim"

  -- Treesitter
  use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
  }
  use "windwp/nvim-ts-autotag"
  use "windwp/nvim-autopairs"
  use "p00f/nvim-ts-rainbow"
  use "nvim-treesitter/nvim-treesitter-refactor"

  use "JoosepAlviste/nvim-ts-context-commentstring"
  use "numToStr/Comment.nvim"

  -- Git
  use "lewis6991/gitsigns.nvim"

  use {
    "iamcco/markdown-preview.nvim",
    run = "cd app && npm install",
    ft = "markdown",
  }

  -- use "nvim-neorg/neorg"
  --use 'godlygeek/tabular'
  --use 'plasticboy/vim-markdown'
  -- Lua
  use "folke/which-key.nvim"
  use "folke/zen-mode.nvim"

  -- Nvim dap
  use "mfussenegger/nvim-dap"
  use "theHamsta/nvim-dap-virtual-text"
  use "rcarriga/nvim-dap-ui"
  use "Pocco81/DAPInstall.nvim"

  -- Compitest
  use "MunifTanjim/nui.nvim"
  use "xeluxee/competitest.nvim"

  -- ThePrimeagen
  use {
    "ThePrimeagen/refactoring.nvim",
    requires = {
      { "nvim-lua/plenary.nvim" },
      { "nvim-treesitter/nvim-treesitter" },
    },
  }
  use "ThePrimeagen/harpoon"

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
