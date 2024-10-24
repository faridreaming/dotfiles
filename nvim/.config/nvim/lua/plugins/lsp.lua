return {
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "stylua",
        "shellcheck",
        "shfmt",
        "tailwindcss-language-server",
        "typescript-language-server",
        "css-lsp",
        "html-lsp",
        "prettier",
        "marksman",
        "lua-language-server",
      })
    end,
  },
  {
    "jose-elias-alvarez/null-ls.nvim",
    opts = function(_, opts)
      local null_ls = require("null-ls")

      opts.sources = opts.sources or {}

      -- Setup Prettier as a formatter for various filetypes
      opts.sources = vim.list_extend(opts.sources, {
        null_ls.builtins.formatting.prettier.with({
          filetypes = { "markdown", "javascript", "typescript", "css", "html" },
        }),
        null_ls.builtins.formatting.stylua.with({
          filetypes = { "lua" },
        }),
      })
    end,
  },
}
