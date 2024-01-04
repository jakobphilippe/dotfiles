-- stylua: ignore
return {
  -- add pyright to lspconfig
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      ---@type lspconfig.options
      servers = {
        -- pyright will be automatically installed with mason and loaded with lspconfig
        pyright = {},
        gopls = {
          cmd = {"gopls"},
          filetypes = {"go", "gomod", "gowork", "gotmpl"},
          settings = {
            gopls = {
              completeUnimported = true,
              usePlaceholders = true,
              staticcheck = true,
              gofumpt = true,
              analyses = {
                unusedparams = true,
              }
            },
          }
        },
      },
    },
  },

  -- add more treesitter parsers
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "bash",
        "html",
        "javascript",
        "json",
        "lua",
        "markdown",
        "markdown_inline",
        "python",
        "query",
        "regex",
        "tsx",
        "typescript",
        "vim",
        "yaml",
        "tsx",
        "typescript",
        "go",
        "gomod",
        "gowork",
        "gosum",
        "svelte"
      },
    },
  },

  -- add any tools you want to have installed below
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "stylua",
        "shellcheck",
        "shfmt",
        "flake8",
        "gopls",
        "goimports",
        "gofumpt",
      },
    },
  },
}
