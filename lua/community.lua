-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.note-taking.obsidian-nvim" },

  -- Colorschemes
  { import = "astrocommunity.colorscheme.everforest" },
  { import = "astrocommunity.colorscheme.catppuccin" },
  { import = "astrocommunity.colorscheme.nordic-nvim" },
  { import = "astrocommunity.colorscheme.onedarkpro-nvim" },
  { import = "astrocommunity.colorscheme.rose-pine" },

  -- Recipes
  { import = "astrocommunity.recipes.neo-tree-dark" },
  { import = "astrocommunity.recipes.telescope-nvchad-theme" },
  { import = "astrocommunity.recipes.neovide" },
  { import = "astrocommunity.recipes.heirline-nvchad-statusline" },
  { import = "astrocommunity.recipes.heirline-vscode-winbar" },
  { import = "astrocommunity.recipes.astrolsp-no-insert-inlay-hints" },

  -- Icons
  -- { import = "astrocommunity.recipes.vscode-icons" },
  { import = "astrocommunity.icon.mini-icons" },

  -- Motion
  -- { import = "astrocommunity.motion.leap-nvim" },
  -- { import = "astrocommunity.motion.flash-nvim"},
  -- { import = "astrocommunity.motion.nvim-surround" },
  -- { import = "astrocommunity.motion.mini-surround" },
  { import = "astrocommunity.motion.nvim-spider" },

  -- Markdown and LaTeX
  { import = "astrocommunity.markdown-and-latex.render-markdown-nvim" },
  { import = "astrocommunity.markdown-and-latex.markdown-preview-nvim" },

  -- Media
  -- BUG: Does not work (failed to load config)
  -- { import = "astrocommunity.media.image-nvim" },

  -- Packs
  { import = "astrocommunity.pack.go" },
  { import = "astrocommunity.pack.lua" },

  -- Misc
  { import = "astrocommunity.game.leetcode-nvim" },
}
