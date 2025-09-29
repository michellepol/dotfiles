return {
    "nvim-tree/nvim-tree.lua",
    version = false,
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        local function open_nvim_tree(data)
            -- buffer is a [No Name]
            local no_name = data.file == "" and vim.bo[data.buf].buftype == ""

            if no_name then
                return
            end

            -- buffer is a directory
            local directory = vim.fn.isdirectory(data.file) == 1

            if not no_name and not directory then
                return
            end

            -- change to the directory
            if directory then
                vim.cmd.cd(data.file)
            end

            -- open the tree
            require("nvim-tree.api").tree.open()
        end

        -- working, don't touch))
        require("nvim-tree").setup({})

        vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })
    end
}
