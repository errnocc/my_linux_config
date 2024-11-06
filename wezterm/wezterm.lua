local wezterm = require 'wezterm'
local act = wezterm.action
local window = wezterm.window

local config = wezterm.config_builder()

config.color_scheme = 'Catppuccin Macchiato'

config.font = wezterm.font ('CaskaydiaCove NF')
config.font_size = 20
-- config.dpi = 192.0

config.window_decorations = "RESIZE"
-- config.window_decorations = "NONE"
config.hide_tab_bar_if_only_one_tab = true
--
config.window_padding = {
    left = '0cell',
    right = '0cell',
    top = '0cell',
    bottom = '0cell',
  }

-- config.colors = {
--     compose_cursor = 'orange',
--     tab_bar = {
--         active_tab = {
--             bg_color = 'DARKOLIVEGREEN',
--             fg_color = 'LIGHTYELLOW'
--         },
--         inactive_tab = {
--             bg_color = '#333333', -- 设置非活动标签的背景颜色
--             fg_color = '#999999' -- 设置非活动标签的前景颜色
--         }
--     }
-- }
config.animation_fps = 10
config.enable_wayland = false
config.keys = {{
    -- CTRL-SHIFT-w 关闭Pane，直至关闭tab
    key = 'w',
    mods = 'SHIFT|CTRL',
    action = wezterm.action.CloseCurrentPane {
        confirm = true
    }
}, {
    -- CTRL-SHIFT-e 重命名tab
    key = 'E',
    mods = 'CTRL|SHIFT',
    action = act.PromptInputLine {
        description = 'Enter new name for tab',
        action = wezterm.action_callback(function(window, pane, line)
            if line then
                window:active_tab():set_title(line)
            end
        end)
    }
}, {
    -- SHIFT-Enter 最大化window
    key = "Enter",
    mods = "SHIFT",
    action = wezterm.action_callback(function(window, pane)
        window:maximize()
    end)
}}

return config
