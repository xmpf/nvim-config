local nest = require('nest')
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

require ('lspconfig').gopls.setup{
  capabilities = capabilities,
  on_attach = function()
    vim.keymap.set("n", "K", vim.lsp.buf.hover, {buffer = 0}) -- 0 make it work only for the current buffer.
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, {buffer = 0})
    vim.keymap.set("n", "gt", vim.lsp.buf.type_definition, {buffer = 0})
    vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {buffer = 0})
    vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename, {buffer = 0})
    vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {buffer = 0})
    vim.keymap.set("n", "<c-k>", vim.lsp.buf.signature_help, {buffer = 0})

    -- diagnostic
    vim.keymap.set("n", "<leader>dn", vim.diagnostic.goto_next, {buffer = 0})
    vim.keymap.set("n", "<leader>dp", vim.diagnostic.goto_prev, {buffer = 0})
  end,
}

local function is_lsp_diagnostics_enabled(bufnr, client_id)
    local ok, result = pcall(vim.api.nvim_buf_get_var, bufnr, 'lsp_diagnostics_enabled')

    if not ok then
        return true
    end

    return result
end

-- TODO: Use something similar when 0.6.0 is released:
-- https://github.com/BachirC/dotfiles/blob/master/nvim/lua/cstm/lsp/diagnostic/toggle.lua
local function toggle_lsp_diagnostics()
    if vim.b.lsp_diagnostics_enabled == nil or vim.b.lsp_diagnostics_enabled == true then
        vim.b.lsp_diagnostics_enabled = false
    else
        vim.b.lsp_diagnostics_enabled = true
    end

    -- Redraw diagnostics
    for _, client in pairs(vim.lsp.get_active_clients()) do
        vim.lsp.diagnostic.redraw(0, client.id)
    end
end

vim.lsp.handlers['textDocument/publishDiagnostics'] =
    vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
        signs = is_lsp_diagnostics_enabled,
        virtual_text = is_lsp_diagnostics_enabled,
        -- Always disable underlining of diagnostics
        underline = false,
    })

nest.applyKeymaps {
    { '<leader>le', toggle_lsp_diagnostics }
}
