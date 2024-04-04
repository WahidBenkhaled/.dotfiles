-- format and color code
return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function() -- treesitter setup (code assistant)
        require("nvim-treesitter.configs").setup({
            -- A list of parser names, or "all"
            ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "bash", "html", "javascript", "css", "markdown" },
            ignore_install = { "latex" },
            sync_install = false, -- idk what this do
            auto_install = true,
            highlight = {
                disable = { "latex" },
                enable = true,
            },
            indent = { enable = true },
        })
    end,
}
