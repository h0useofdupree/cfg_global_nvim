if not vim.g.neovide then return {} end

return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    options = {
      opt = {},
      g = {
        neovide_scale_factor = 1.1,
        neovide_padding_top = 0,
        neovide_padding_bottom = 0,
        neovide_padding_left = 0,
        neovide_padding_right = 0,
        neovide_theme = "auto",
        neovide_cursor_smooth_blink = true,

        -- Animations
        neovide_scroll_animation_far_lines = 10,
        neovide_cursor_animation_length = 0.1,
        neovide_cursor_trail_size = 0.7,
        neovide_cursor_antialiasing = true,
        neovide_cursor_animate_in_insert_mode = true,
        neovide_cursor_animate_command_line = true,
        neovide_cursor_vfx_mode = "railgun",
      },
    },
  },
}
