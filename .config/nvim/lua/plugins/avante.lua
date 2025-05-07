return {
    "yetone/avante.nvim",
    version = false, -- Never set this value to "*"! Never!
    opts = {
        -- add any opts here
        -- for example
        provider = "deepseek-ai",
        auto_suggestions_provider = "deepseek-ai",
        vendors = {
            ["deepseek-ai"] = {
                 __inherited_from = 'openai',
                endpoint="https://api.deepseek.com/v1",
                --endpoint = "http://deepseek-openai.yandex-team.ru/deepseek-v3/v1",
                model = "deepseek-coder",
                timeout = 30000,    -- Timeout in milliseconds, increase this for reasoning models
                temperature = 0,
                max_completion_tokens = 8192, -- Increase this to include reasoning tokens (for reasoning models)
                --reasoning_effort = "medium", -- low|medium|high, only used for reasoning models
                api_key_name = "DEEPSEEK_API_KEY",
                disable_tools = true
            }
        },
        behaviour = {
                auto_suggestions = false, -- Experimental stage
                auto_set_highlight_group = true,
                auto_set_keymaps = true,
                auto_apply_diff_after_generation = false,
                support_paste_from_clipboard = false,
                minimize_diff = true, -- Whether to remove unchanged lines when applying a code block
                enable_token_counting = true, -- Whether to enable token counting. Default to true.
                enable_cursor_planning_mode = false, -- Whether to enable Cursor Planning Mode. Default to false.
                enable_claude_text_editor_tool_mode = false, -- Whether to enable Claude Text Editor Tool Mode.
        }
    },
    -- if you want to build from source then do `make BUILD_FROM_SOURCE=true`
    build = "make",
    -- build = "powershell -ExecutionPolicy Bypass -File Build.ps1 -BuildFromSource false" -- for windows
    dependencies = {
        "nvim-treesitter/nvim-treesitter",
        "stevearc/dressing.nvim",
        "nvim-lua/plenary.nvim",
        "MunifTanjim/nui.nvim",
        --- The below dependencies are optional,
        "nvim-tree/nvim-web-devicons", -- or echasnovski/mini.icons
        {
            -- support for image pasting
            "HakonHarnes/img-clip.nvim",
            event = "VeryLazy",
            opts = {
                -- recommended settings
                default = {
                    embed_image_as_base64 = false,
                    prompt_for_file_name = false,
                    drag_and_drop = {
                        insert_mode = true,
                    },
                    -- required for Windows users
                    use_absolute_path = true,
                },
            },
        },
        {
            -- Make sure to set this up properly if you have lazy=true
            'MeanderingProgrammer/render-markdown.nvim',
            opts = {
                file_types = { "markdown", "Avante" },
            },
            ft = { "markdown", "Avante" },
        },
    },
}
