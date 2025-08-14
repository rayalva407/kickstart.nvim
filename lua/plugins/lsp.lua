return {
  {
    "mason-org/mason.nvim",
    cmd = { "Mason" },
    opts = {
      ui = {
        icons = {
           package_installed = "✓",
           package_pending = "➜",
           package_uninstalled = "✗"
        }
      }
    },
    config = function() require("mason").setup() end
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      {
        "folke/lazydev.nvim",
        ft = "lua", -- only load on lua files
        opts = {
          library = {
            -- See the configuration section for more details
            -- Load luvit types when the `vim.uv` word is found
            { path = "${3rd}/luv/library", words = { "vim%.uv" } },
          },
        },
      },
    },
    config = function()
      vim.lsp.enable('lua_ls')
      vim.diagnostic.config({
        virtual_text = true,
        severity_sort = true,
        float = {
          style = 'minimal',
          border = 'rounded',
          header = '',
          prefix = '',
        },
        signs = {
          text = {
            [vim.diagnostic.severity.ERROR] = '✘',
            [vim.diagnostic.severity.WARN] = '▲',
            [vim.diagnostic.severity.HINT] = '⚑',
            [vim.diagnostic.severity.INFO] = '»',
          },
        }
      })
    end
  }
}
