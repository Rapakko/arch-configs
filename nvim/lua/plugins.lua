-- Setup lazy.nvim

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    {
        "catppuccin/nvim", name = "catppuccin", priority = 1000

    },

    {
        "neanias/everforest-nvim",
        version = false,
        lazy = false,
        priority = 1000,
    },

    {
        "nvim-treesitter/nvim-treesitter",
        config = function()
            require("nvim-treesitter.configs").setup({
                ensure_installed = { "c", "python", "html", "toml", "json", "lua", "vim", "vimdoc", "query"},

                auto_install = true,

                highlight = {
                    enable = true,
                },
            })
        end
    },
    {
        "windwp/nvim-autopairs",
        event = "InsertEnter",
        config = true
    }
})

--require("catppuccin").setup({
--    flavour = "macchiato",
--    config = function()
--        vim.cmd.colorscheme("catppuccin")
--    end,
--})
require("everforest").load()
