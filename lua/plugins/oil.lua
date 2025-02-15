return {
    {
        'stevearc/oil.nvim',
        opts = {},
        lazy = false,
        default_file_explorer = true,
        vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" }),
        vim.keymap.set("n", "_", "<CMD>Oil ..<CR>", { desc = "Open grand-parent directory" })
    }
}
