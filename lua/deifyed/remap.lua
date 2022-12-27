vim.g.mapleader = " "
--
-- Open treeview
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Move selected lines up or down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Disable something
vim.keymap.set("n", "Q", "<nop>")

-- Buffer navigation
vim.keymap.set("n", "<leader>q", function()
    vim.api.nvim_buf_delete(0, {})
end)
