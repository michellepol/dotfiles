return {
    "nvim-treesitter/nvim-treesitter",
    version = "*",
    opts = {
  ensure_installed = { "c", "lua", "vim", "vimdoc", "cpp", "markdown", "markdown_inline", "sql", "python" },
  sync_install = false,
  auto_install = false,
  ignore_install = { "javascript" },
  highlight = {
    enable = true,
    -- disable slow treesitter highlight for large files
    disable = function(lang, buf)
        local max_filesize = 100 * 1024 -- 100 KB
        local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
        if ok and stats and stats.size > max_filesize then
            return true
        end
    end,
    additional_vim_regex_highlighting = false,
  },
    }
}
