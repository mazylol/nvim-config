require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<leader>ct", ":VimtexCompile<CR>")
map("n", "<leader>cp", ":VimtexView<CR>")
map("n", "<leader>cd", function()
  vim.diagnostic.open_float(nil, { focus = false })
end, { desc = "Open diagnostic float" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
