return {
  {
    "saghen/blink.cmp",
    enabled = false,
    lazy = false,
    priority = 1000,
    dependencies = {"rafamadriz/friendly-snippets", "L3MON4D3/LuaSnip" },
    version = "1.*",
    opts = {
      keymap = { preset = "default" },

      appearance = {
        nerd_font_variant = "mono",
      },

      completion = { documentation = { auto_show = false } },

      sources = {
        default = { "lsp", "path", "snippets", "buffer" },
      },

      snippets = {preset = 'luasnip'}
    },
    signature = { enabled = true },
    opts_extend = { "sources.default" },
  },

  {
    "L3MON4D3/LuaSnip",
    enabled = true,
    dependencies = {
      "saadparwaiz1/cmp_luasnip",
      "rafamadriz/friendly-snippets",
    },
    config = function()
      require("luasnip.loaders.from_vscode").lazy_load()
    end,
  },
  {
    "hrsh7th/nvim-cmp",
    enabled = true,
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
    },
    config = function()
      local cmp = require("cmp")
      -- NVIM-CMP
      cmp.setup({
        snippet = {
          expand = function(args)
            require("luasnip").lsp_expand(args.body) -- For `luasnip` users.
          end,
        },
        window = {
          completion = cmp.config.window.bordered(),
          documentation = cmp.config.window.bordered(),
        },
        mapping = cmp.mapping.preset.insert({
          ["<C-b>"] = cmp.mapping.scroll_docs(-4),
          ["<C-f>"] = cmp.mapping.scroll_docs(4),
          ["<C-Space>"] = cmp.mapping.complete(),
          ["<C-e>"] = cmp.mapping.abort(),
          ["<CR>"] = cmp.mapping.confirm({ select = true }),
        }),
        sources = cmp.config.sources({
          { name = "nvim_lsp" },
          { name = "luasnip" }, -- For luasnip users.
        }, {
          { name = "buffer" },
        }),
      })
      -- CMP-NVM-LSP

      require("cmp").setup({
        sources = {
          { name = "nvim_lsp" },
        },
      })
    end,
  },
}
