-- You can also add or configure plugins by creating files in this `plugins/` folder
-- Here are some examples:

---@type LazySpec
return {
  {
    "bullets-vim/bullets.vim",
    config = function()
      vim.g.bullets_enabled_file_types = {
        -- "markdown",
        "text",
        "gitcommit",
      }
    end,
  },
  {
    "tadmccorkle/markdown.nvim",
    ft = "markdown", -- or 'event = "VeryLazy"'
    opts = {
      -- configuration here or empty for defaults
    },
  },
  -- {
  --   "echasnovski/mini.surround",
  --   version = "*",
  --   config = function()
  --     require("mini.surround").setup {
  --       custom_surroundings = {
  --         b = {
  --           output = { left = "**", right = "**" },
  --         },
  --         i = {
  --           output = { left = "*", right = "*" },
  --         },
  --       },
  --     }
  --   end,
  -- },
  {
    "lervag/vimtex",
    lazy = false,
    -- tag = "v2.15",
    init = function()
      vim.g.vimtex_view_method = "zathura"
      vim.g.vimtex_view_general_options = "--synctex-forward @line:@col:@pdf --synctex-editor-command nvim"
    end,
  },
  {
    "Myzel394/easytables.nvim",
    ---@diagnostic disable-next-line: missing-parameter
    config = function() require("easytables").setup() end,
  },
  { "ellisonleao/glow.nvim", config = true, cmd = "Glow" },

  { "lambdalisue/suda.vim" },

  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {},
  },

  "andweeb/presence.nvim",
  {
    "ray-x/lsp_signature.nvim",
    event = "BufRead",
    config = function() require("lsp_signature").setup() end,
  },

  ---- Overrides
  -- Alpha
  {
    "goolord/alpha-nvim",
    opts = function(_, opts)
      -- customize the dashboard header
      opts.section.header.val = {
        "   b.             8 `8.`888b           ,8'",
        "   888o.          8  `8.`888b         ,8' ",
        "   Y88888o.       8   `8.`888b       ,8'  ",
        "   .`Y888888o.    8    `8.`888b     ,8'   ",
        "   8o. `Y888888o. 8     `8.`888b   ,8'    ",
        "   8`Y8o. `Y88888o8      `8.`888b ,8'     ",
        "   8   `Y8o. `Y8888       `8.`888b8'      ",
        "   8      `Y8o. `Y8        `8.`888'       ",
        "   8         `Y8o.`         `8.`8'        ",
        "   8            `Yo          `8.`         ",
      }
      return opts
    end,
  },

  -- You can disable default plugins as follows:
  -- { "max397574/better-escape.nvim", enabled = false },

  -- You can also easily customize additional setup of plugins that is outside of the plugin's setup call
  {
    "L3MON4D3/LuaSnip",
    config = function(plugin, opts)
      require "astronvim.plugins.configs.luasnip"(plugin, opts) -- include the default astronvim config that calls the setup call
      -- add more custom luasnip configuration such as filetype extend or custom snippets
      local luasnip = require "luasnip"
      luasnip.filetype_extend("javascript", { "javascriptreact" })
    end,
  },

  {
    "windwp/nvim-autopairs",
    config = function(plugin, opts)
      require "astronvim.plugins.configs.nvim-autopairs"(plugin, opts) -- include the default astronvim config that calls the setup call
      -- add more custom autopairs configuration such as custom rules
      local npairs = require "nvim-autopairs"
      local Rule = require "nvim-autopairs.rule"
      local cond = require "nvim-autopairs.conds"
      npairs.add_rules(
        {
          Rule("$", "$", { "tex", "latex" })
            -- don't add a pair if the next character is %
            :with_pair(cond.not_after_regex "%%")
            -- don't add a pair if  the previous character is xxx
            :with_pair(
              cond.not_before_regex("xxx", 3)
            )
            -- don't move right when repeat character
            :with_move(cond.none())
            -- don't delete if the next character is xx
            :with_del(cond.not_after_regex "xx")
            -- disable adding a newline when you press <cr>
            :with_cr(cond.none()),
        },
        -- disable for .vim files, but it work for another filetypes
        Rule("a", "a", "-vim")
      )
    end,
  },
}
