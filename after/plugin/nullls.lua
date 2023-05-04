local null_ls = require 'null-ls'
local formatting = null_ls.builtins.formatting

local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

local omnisharp = {
  filetypes = { "cs" },
  method = null_ls.methods.FORMATTING,
  generator = {
    fn = function()
      return nil
    end,
  }
}

null_ls.setup {
  sources = {
    formatting.prettier,
    formatting.stylua,
    omnisharp
  },

  on_attach = function(client, bufnr)
    if client.supports_method("textDocument/formatting") then
      vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
      vim.api.nvim_create_autocmd("BufWritePre", {
        group = augroup,
        buffer = bufnr,
        callback = function()
          vim.lsp.buf.format({ bufnr = bufnr })
        end,
      })
    end
  end,
}
