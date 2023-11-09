return {
    "navarasu/onedark.nvim",
    version = "*",
    opts = {
        style='deep'
    },
    config = function()
        vim.cmd.colorscheme("onedark")
    end
}
