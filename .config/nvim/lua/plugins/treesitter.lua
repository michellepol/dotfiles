return {
    "nvim-treesitter/nvim-treesitter",
    version = false,
    event = {"VimEnter"},
    build = ":TSUpdate",
    config = function ()
      local configs = require("nvim-treesitter.configs")

      configs.setup({
            highlight = { enable = true },
            indent = { enable = true },
            auto_install = true,
            ensure_installed = {
              -- programming languages
              "c",
              "cpp",
              "python",
              "lua",
              "typescript",
              -- data types
              "json",
              "jsonc",
              "xml",
              "yaml",
              -- docs
              "markdown",
              "markdown_inline",
              "luadoc",
              -- other
              "bash",
              "diff",
              "html",
              "regex",
              "vim",
              "vimdoc",
            },
        })
    end
}
