return {
    "vim-test/vim-test",

    dependencies = {
	"preservim/vimux",
    },

    vim.keymap.set("n", "<leader>tt", ":TestNearest<CR>"),
    vim.keymap.set("n", "<leader>T", ":TestFile<CR>"),
    vim.keymap.set("n", "<leader>ta", ":TestSuite<CR>"),

    vim.cmd("let test#strategy = 'vimux'"),
}
