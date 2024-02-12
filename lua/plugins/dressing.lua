return {
    "stevearc/dressing.nvim",
    event = "VeryLazy",
    opts = {
        input = {
            border = "single",
        },
        select = {
            telescope = {
                layout_strategy = "vertical",
                borderchars = {
                    prompt = {
                        "─",
                        "│",
                        "─",
                        "│",
                        "┌",
                        "┐",
                        "┘",
                        "└",
                    },
                    results = {
                        "─",
                        "│",
                        "─",
                        "│",
                        "┌",
                        "┐",
                        "┘",
                        "└",
                    },
                    preview = {
                        "─",
                        "│",
                        "─",
                        "│",
                        "┌",
                        "┐",
                        "┘",
                        "└",
                    },
                },
            },
        },
    },
}
