vim.pack.add({
  "https://github.com/mason-org/mason.nvim",
  "https://github.com/mason-org/mason-lspconfig.nvim",
  "https://github.com/neovim/nvim-lspconfig",
})

require("mason").setup()

local capabilities = require("cmp_nvim_lsp").default_capabilities()

vim.lsp.config("*", {
  capabilities = capabilities,
})

vim.lsp.config("lua_ls", {
  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim" },
      },
      workspace = {
        checkThirdParty = false,
      },
      telemetry = {
        enable = false,
      },
    },
  },
})

require("mason-lspconfig").setup({
  ensure_installed = {
    "intelephense",
    "rust_analyzer",
    "ts_ls",
    "svelte",
    "html",
    "cssls",
    "jsonls",
    "lua_ls",
    "bashls",
  },
  automatic_enable = true,
})
