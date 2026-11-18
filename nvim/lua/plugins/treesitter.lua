vim.pack.add({
  {
    src = "https://github.com/nvim-treesitter/nvim-treesitter",
    version = "main",
  },
})

require("nvim-treesitter").setup({})

require("nvim-treesitter").install({
  "bash",
  "css",
  "html",
  "javascript",
  "jsdoc",
  "json",
  "jsonc",
  "lua",
  "luadoc",
  "markdown",
  "markdown_inline",
  "php",
  "query",
  "rust",
  "svelte",
  "toml",
  "tsx",
  "typescript",
  "vim",
  "vimdoc",
  "yaml",
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = {
    "bash",
    "css",
    "html",
    "javascript",
    "json",
    "jsonc",
    "lua",
    "markdown",
    "php",
    "rust",
    "svelte",
    "toml",
    "tsx",
    "typescript",
    "vim",
    "yaml",
  },
  callback = function(args)
    pcall(vim.treesitter.start, args.buf)
  end,
})
