return {
    "yetone/avante.nvim",
    version = false,
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
            disable_tools = true
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
