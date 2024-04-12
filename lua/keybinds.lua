-- <leader>g = Go to...
-- <leader>w = Workspace...
-- <leader>b = Debug Action...

-- Show information about function
vim.keymap.set("n", "<leader><leader>", vim.lsp.buf.hover, {})

-- Show information about function arguments
vim.keymap.set("n", "<leader>k", vim.lsp.buf.signature_help, {})

-- Code action, basically <C-.> in VS Code
vim.keymap.set({ "n", "v" }, "<leader>.", vim.lsp.buf.code_action, {})

-- Go to definition (Header file definition)
vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
-- Go to implementation (Source file definition)
vim.keymap.set("n", "<leader>gi", vim.lsp.buf.implementation, {})
-- Go to type definition
vim.keymap.set("n", "<leader>gt", vim.lsp.buf.type_definition, {})
-- Go to references (where this symbol is used)
vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})

-- Workspace add folder
vim.keymap.set("n", "<leader>wa", vim.lsp.buf.add_workspace_folder, {})
-- Workspace remove folder
vim.keymap.set("n", "<leader>wr", vim.lsp.buf.remove_workspace_folder, {})
-- Lists all open folders
vim.keymap.set("n", "<leader>wl", "<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>", {})

-- Format file
vim.keymap.set("n", "<leader>ff", vim.lsp.buf.format, {})

local dap = require("dap")
vim.keymap.set("n", "<leader>db", dap.toggle_breakpoint, {})
vim.keymap.set("n", "<leader>dc", dap.continue, {})
