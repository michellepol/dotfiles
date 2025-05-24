return {
    "yetone/avante.nvim",
    version = false,
    keys = {
        {
            "<leader>a+",
            function()
                local tree_ext = require("avante.extensions.nvim_tree")
                tree_ext.add_file()
            end,
            desc = "Select file in NvimTree",
            ft = "NvimTree",
        },
        {
            "<leader>a-",
            function()
                local tree_ext = require("avante.extensions.nvim_tree")
                tree_ext.remove_file()
            end,
            desc = "Deselect file in NvimTree",
            ft = "NvimTree",
        },
    },
    opts = {
        provider = "claude",
        auto_suggestions_provider = "claude",
        cursor_applying_provider = "claude",
        claude = {
            endpoint = "https://api.anthropic.com",
            model = "claude-sonnet-4-20250514",
            timeout = 30000,
            temperature = 0,
            max_tokens = 4096,
        },
        vendors = {
            ["deepseek-ai"] = {
                __inherited_from = 'openai',
                endpoint = "https://api.deepseek.com/v1",
                model = "deepseek-coder",
                timeout = 30000,
                temperature = 0,
                max_completion_tokens = 8192,
                api_key_name = "DEEPSEEK_API_KEY",
            },
        },
        behaviour = {
            auto_suggestions = false,
            auto_set_highlight_group = true,
            auto_set_keymaps = true,
            auto_apply_diff_after_generation = false,
            support_paste_from_clipboard = false,
            minimize_diff = true,
            enable_token_counting = true,
            enable_cursor_planning_mode = true,
        },
        mappings = {
            ---@class AvanteConflictMappings
            diff = {
                ours = "co",
                theirs = "ct",
                all_theirs = "ca",
                both = "cb",
                cursor = "cc",
                next = "]x",
                prev = "[x",
            },
            suggestion = {
                accept = "<leader>Tab",
                next = "<M-]>",
                prev = "<M-[>",
                dismiss = "<C-]>",
            },
            jump = {
                next = "]]",
                prev = "[[",
            },
            submit = {
                normal = "<CR>",
                insert = "<C-s>",
            },
            cancel = {
                normal = { "<C-c>", "<Esc>", "q" },
                insert = { "<C-c>" },
            },
            -- NOTE: The following will be safely set by avante.nvim
            ask = "<leader>aa",
            new_ask = "<leader>an",
            edit = "<leader>ae",
            refresh = "<leader>ar",
            focus = "<leader>af",
            stop = "<leader>aS",
            toggle = {
                default = "<leader>at",
                debug = "<leader>ad",
                hint = "<leader>ah",
                suggestion = "<leader>as",
                repomap = "<leader>aR",
            },
            sidebar = {
                apply_all = "A",
                apply_cursor = "a",
                retry_user_request = "r",
                edit_user_request = "e",
                switch_windows = "<Tab>",
                reverse_switch_windows = "<S-Tab>",
                remove_file = "d",
                add_file = "@",
                close = { "q" },
                ---@alias AvanteCloseFromInput { normal: string | nil, insert: string | nil }
                ---@type AvanteCloseFromInput | nil
                close_from_input = nil, -- e.g., { normal = "<Esc>", insert = "<C-d>" }
            },
            files = {
                add_current = "<leader>ac", -- Add current buffer to selected files
                add_all_buffers = "<leader>aB", -- Add all buffer files to selected files
            },
            select_model = "<leader>a?", -- Select model command
            select_history = "<leader>ah", -- Select history command
        },
    },
    build = "make",
    dependencies = {
        "nvim-treesitter/nvim-treesitter",
        "stevearc/dressing.nvim",
        "nvim-lua/plenary.nvim",
        "MunifTanjim/nui.nvim",
        "nvim-tree/nvim-web-devicons",
        {
            'MeanderingProgrammer/render-markdown.nvim',
            opts = {
                file_types = { "markdown", "Avante" },
            },
            ft = { "markdown", "Avante" },
        },
    },
}
