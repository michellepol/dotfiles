return {
    "yetone/avante.nvim",
    version = false,
    opts = {
        provider = "eliza",
        providers = {
            claude = {
                endpoint = "https://api.anthropic.com",
                model = "claude-sonnet-4-20250514",
                timeout = 30000,
            },
            deepseek = {
                __inherited_from = 'openai',
                endpoint = "https://api.deepseek.com/v1",
                model = "deepseek-coder",
                timeout = 30000,
                disable_tools = true,
                api_key_name = "DEEPSEEK_API_KEY",
            },
            eliza = {
                __inherited_from = 'openai',
                endpoint = "https://api.eliza.yandex.net/anthropic/v1",
                model = "claude-sonnet-4-20250514",
                timeout = 30000,
                api_key_name = "ELIZA_API_KEY",
            }
        },
        behaviour = {
            auto_suggestions = false,
            auto_set_highlight_group = true,
            auto_set_keymaps = true,
            auto_apply_diff_after_generation = false,
            support_paste_from_clipboard = true,
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
